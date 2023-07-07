import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/accountinfo/accountinfo_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/accountinfo/function.dart';
import 'package:project2/ui/splashscreen/splashscreen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      User? user = FirebaseAuth.instance.currentUser;
      fetchUserData(user!.uid, context);
    });

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 4,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectanglewavebg.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  right: 50,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            child: ClipOval(
                                child: Image(
                              image: NetworkImage(
                                  'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000'),
                              fit: BoxFit.cover,
                            )),
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
                      BlocBuilder<AccountinfoBloc, AccountinfoState>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.name,
                                style:
                                    fontstyle(color: colorwhite, fontSize: 22),
                              ),
                              Text(
                                state.phone,
                                style:
                                    fontstyle(color: colorwhite, fontSize: 15),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ProfileScreenContainer(
              size: size,
              title: 'Address',
            ),
            ProfileScreenContainer(
              size: size,
              title: 'Orders',
            ),
            ProfileScreenContainer(
              size: size,
              title: 'Cart',
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
