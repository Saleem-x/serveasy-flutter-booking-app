import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/bloc/accountinfo/accountinfo_bloc.dart';
import 'package:project2/bloc/address/address_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/accountinfo.dart';
import 'package:project2/presentation/accountinfo/profileoverview.dart';
import 'package:project2/presentation/address/addreassscreen.dart';
import 'package:project2/presentation/cart/cartscreen.dart';
import 'package:project2/presentation/orders/orderslist.dart';
import 'package:project2/presentation/splashscreen/splashscreen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      fetchUserData(context);
      // context
      //     .read<AccountinfoBloc>()
      //     .add(GetUserDetailsEvent('Username', 'Phone', 'no-img'));
    });

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            BlocBuilder<AccountinfoBloc, AccountinfoState>(
              builder: (context, state) {
                return Stack(
                  children: [
                    Container(
                      height: size.height / 4,
                      width: size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/Rectanglewavebg.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 50,
                      right: 10,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  log(state.imageurl);
                                },
                                child: CircleAvatar(
                                  radius: 50,
                                  child: SizedBox.fromSize(
                                    size: size,
                                    child: ClipOval(
                                      child: state.imageurl == 'no-img'
                                          ? Image.asset(
                                              'assets/images/profiletemp.jpg')
                                          : Image.network(
                                              state.imageurl,
                                              fit: BoxFit.cover,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: -15,
                                top: -5,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.camera,
                                    size: 20,
                                    color: colorwhite,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.name,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    fontstyle(color: colorwhite, fontSize: 20),
                              ),
                              Text(
                                state.phone,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    fontstyle(color: colorwhite, fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileOverView(
                                        name: state.name, phone: state.phone),
                                  ));
                            },
                            icon: const Icon(
                              FontAwesomeIcons.user,
                              color: colorwhite,
                            )))
                  ],
                );
              },
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            InkWell(
              onTap: () {
                context.read<AddressBloc>().add(CitySelectingEvent('City'));
                context
                    .read<AddressBloc>()
                    .add(CountrySelectingEvent('Country'));
                context.read<AddressBloc>().add(StateSelectingEvent('State'));
                context.read<AddressBloc>().add(LoadingEvent(false));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressScreen(),
                    ));
              },
              child: ProfileScreenContainer(
                size: size,
                title: 'Address',
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderesListScreen(),
                  )),
              child: ProfileScreenContainer(
                size: size,
                title: 'Bookings',
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  )),
              child: ProfileScreenContainer(
                size: size,
                title: 'Cart',
              ),
            ),
            InkWell(
              onTap: () => Alert(
                context: context,
                type: AlertType.warning,
                title: "Logout",
                desc: "do you want to logout.",
                buttons: [
                  DialogButton(
                    onPressed: () async {
                      final sharedprefs = await SharedPreferences.getInstance();
                      sharedprefs.setBool('userin', false);
                      logout();
                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => const SplashScreen(),
                          ),
                          (route) => false);
                    },
                    width: 120,
                    child: const Text(
                      "Logout",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ).show(),
              child: ProfileScreenContainer(
                size: size,
                title: 'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreenContainer extends StatelessWidget {
  final String title;
  const ProfileScreenContainer({
    super.key,
    required this.size,
    required this.title,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: size.height * 0.07,
        width: size.width - 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorblue),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: fontstyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: colorgreyshade),
              ),
              const Icon(CupertinoIcons.forward, color: colorblue)
            ],
          ),
        ),
      ),
    );
  }
}
