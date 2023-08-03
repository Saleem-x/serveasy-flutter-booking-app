import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/buisnesslogic/bloc/address/address_bloc.dart';
import 'package:project2/buisnesslogic/bloc/calender/calender_bloc.dart';
import 'package:project2/buisnesslogic/bloc/servicebooknow/servicebooknow_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/address.dart';
import 'package:project2/functions/booking.dart';
import 'package:project2/domain/models/address/addressmodel.dart';
import 'package:project2/domain/models/servisebookingmodel.dart';
import 'package:project2/presentation/address/addreassscreen.dart';

class BookNowScreen extends StatefulWidget {
  final ServiceBookingModel servicetobook;
  const BookNowScreen({super.key, required this.servicetobook});

  @override
  State<BookNowScreen> createState() => _BookNowScreenState();
}

final _namecontroller = TextEditingController();
final _phonecontroller = TextEditingController();
final _requircontroller = TextEditingController();
final _booknowformkey = GlobalKey<FormState>();

class _BookNowScreenState extends State<BookNowScreen> {
  @override
  void initState() {
    context.read<ServicebooknowBloc>().add(AddressSelectionEvent(null));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<ServicebooknowBloc>().add(BoookNowLoadingEvent(false));
      List<AddressModel> addresslist = await getAddressllist() ?? [];
      Future.delayed(const Duration(microseconds: 100), () {
        context.read<ServicebooknowBloc>().add(GetAddressEvent(addresslist));
      });
    });
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ServicebooknowBloc, ServicebooknowState>(
          builder: (context, state) {
            return state.isLoading
                ? Center(
                    child: Lottie.asset(
                        'assets/animations/loadinganimation1.json'),
                  )
                /* : state.addresslist == null
                    ? Center(
                        child: Lottie.asset(
                            'assets/animations/loadinganimation1.json'),
                      ) */
                : Form(
                    key: _booknowformkey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: size.height / 4,
                                width: size.width,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Rectanglewavebg.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Positioned(
                                child: IconButton(
                                  onPressed: () async {
                                    List<GetServicemodel> bookedlist =
                                        await getbookedservices(DateTime.now());
                                    // ignore: use_build_context_synchronously
                                    context.read<CalenderBloc>().add(
                                        GetBookedServicesEvent(bookedlist));
                                    // ignore: use_build_context_synchronously
                                    context
                                        .read<CalenderBloc>()
                                        .add(DaySelectingEvent(DateTime.now()));
                                    // ignore: use_build_context_synchronously
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    CupertinoIcons.back,
                                    color: colorwhite,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50,
                                right: 50,
                                bottom: 0,
                                child: Container(
                                  height: size.height * 0.15,
                                  width: size.width - 30,
                                  decoration: BoxDecoration(
                                    color: colorblue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: colorblue,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: const Offset(0,
                                                  3), // changes the shadow position
                                            ),
                                          ],
                                          image: DecorationImage(
                                              image: NetworkImage(widget
                                                  .servicetobook
                                                  .service
                                                  .imageUrl),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: colorblue,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 15),
                                          child: Column(children: [
                                            Text(
                                              widget.servicetobook.service.name,
                                              style: fontstyle(
                                                  color: colorwhite,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Divider(),
                                            Text(
                                              'for booking please fill the below fields',
                                              style: fontstyle(
                                                color: colorwhite,
                                                fontSize: 17,
                                              ),
                                            )
                                          ]),
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Date',
                                            style: fontstyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            DateFormat('yyyy-MM-dd').format(
                                                widget.servicetobook.date),
                                            style: fontstyle(
                                              fontSize: 17,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'slot',
                                            style: fontstyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            widget.servicetobook.timeslote,
                                            style: fontstyle(
                                              fontSize: 17,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: InkWell(
                              onTap: () {
                                if (state.addresslist == null ||
                                    state.addresslist!.isEmpty) {
                                  context
                                      .read<AddressBloc>()
                                      .add(CitySelectingEvent('City'));
                                  context
                                      .read<AddressBloc>()
                                      .add(CountrySelectingEvent('Country'));
                                  context
                                      .read<AddressBloc>()
                                      .add(StateSelectingEvent('State'));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AddressScreen(),
                                      ));
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                          'address list',
                                          style: fontstyle(),
                                        ),
                                        content: Card(
                                          child: SizedBox(
                                            width: double.maxFinite,
                                            child: ListView.separated(
                                              shrinkWrap: true,
                                              itemCount:
                                                  state.addresslist!.length,
                                              separatorBuilder:
                                                  (BuildContext context,
                                                          int index) =>
                                                      const Divider(),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return ListTile(
                                                  title: Text(state
                                                      .addresslist![index]
                                                      .address),
                                                  onTap: () {
                                                    context
                                                        .read<
                                                            ServicebooknowBloc>()
                                                        .add(AddressSelectionEvent(
                                                            state.addresslist![
                                                                index]));
                                                    Navigator.pop(context);
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                // height: size.height * 0.07,
                                // width: size.width - 20,
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(10),
                                //   border: Border.all(color: colorblue),
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Text(
                                          state.addresslist == null ||
                                                  state.addresslist!.isEmpty
                                              ? 'you havent created address click to create one'
                                              : state.address == null
                                                  ? 'Select address'
                                                  : '${state.address!.address}/ ${state.address!.city}/${state.address!.state}/${state.address!.country}/${state.address!.zipcode}',
                                          style: fontstyle(fontSize: 17),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_drop_down,
                                        color: colorgreyshade,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          BookingTextField(
                            controller: _namecontroller,
                            label: 'organizers name',
                            isPass: false,
                            type: TextInputType.name,
                          ),
                          BookingTextField(
                            controller: _phonecontroller,
                            label: 'phone',
                            isPass: false,
                            type: TextInputType.number,
                          ),
                          BookingTextField(
                            controller: _requircontroller,
                            label: 'additional requirements',
                            isPass: false,
                            type: TextInputType.text,
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              side: const BorderSide(
                                color: colorblue,
                                width: 2.0,
                              ),
                            ),
                            onPressed: () {
                              if (_booknowformkey.currentState!.validate() &&
                                  state.address != null) {
                                context
                                    .read<ServicebooknowBloc>()
                                    .add(BoookNowLoadingEvent(true));

                                bookService(
                                    widget.servicetobook,
                                    context,
                                    _namecontroller.text,
                                    _requircontroller.text,
                                    state.address!);

                                _namecontroller.clear();
                                _phonecontroller.clear();
                                _requircontroller.clear();
                                context
                                    .read<ServicebooknowBloc>()
                                    .add(AddressSelectionEvent(state.address!));
                                context
                                    .read<ServicebooknowBloc>()
                                    .add(BoookNowLoadingEvent(false));
                                // ignore: use_build_context_synchronously
                                context
                                    .read<ServicebooknowBloc>()
                                    .add(AddressSelectionEvent(null));
                              } else if (state.address == null) {
                                ScaffoldMessenger.of(context)
                                  ..removeCurrentSnackBar()
                                  ..showSnackBar(SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Row(
                                        children: [
                                          const Icon(
                                            Icons.info,
                                            color: colorwhite,
                                          ),
                                          Text(
                                            ' Select Address',
                                            style: fontstyle(color: colorwhite),
                                          )
                                        ],
                                      )));
                              }
                              context
                                  .read<ServicebooknowBloc>()
                                  .add(BoookNowLoadingEvent(false));
                            },
                            child: Text(
                              'Book Now',
                              style: fontstyle(color: colorblue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}

class BookingTextField extends StatelessWidget {
  final String label;
  final bool isPass;
  final TextInputType type;
  final TextEditingController controller;
  const BookingTextField({
    super.key,
    required this.label,
    required this.isPass,
    required this.type,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPass,
        decoration: InputDecoration(
          label: Text(
            label,
            style: fontstyle(color: textcolorblue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: colorblue,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$label is required';
          } else if (label == 'phone' && value.length != 10) {
            return 'phone number should be 10';
          }
          return null;
        },
      ),
    );
  }
}

List<String> address = ['address1', 'address2', 'address3'];
