import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/buynow/buynowselection_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/functions/buynow.dart';
import 'package:project2/models/productmodel.dart';

class BuyNowScreen extends StatelessWidget {
  final ProductModel product;
  const BuyNowScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BuynowselectionBloc>().add(
            ItemCountIncriment(0),
          );
      context.read<BuynowselectionBloc>().add(
            AddressSelectionEvent('select Adress'),
          );
      context.read<BuynowselectionBloc>().add(
            PaymentselctionEvent('Select PAyment Method'),
          );
      context.read<BuynowselectionBloc>().add(
            LoadingEvent(false),
          );
    });
    final size = MediaQuery.of(context).size;
    // String selectedaddress = 'select Adress';
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<BuynowselectionBloc, BuynowselectionState>(
          builder: (context, state) {
            return state.isLoading
                ? Center(
                    child: Lottie.asset(
                        'assets/animations/loadinganimation1.json'),
                  )
                : SingleChildScrollView(
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
                                onPressed: () {
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
                                child: Row(
                                  children: [
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
                                              image: NetworkImage(
                                                  product.imageUrl),
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
                                              horizontal: 15, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                product.name,
                                                style: fontstyle(
                                                    color: colorwhite,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Divider(),
                                              SizedBox(
                                                height: size.height * 0.005,
                                              ),
                                              Text(
                                                'price ₹${product.price.toString()}',
                                                style: fontstyle(
                                                  color: colorwhite,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  state.count > 0
                                                      ? IconButton(
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    BuynowselectionBloc>()
                                                                .add(ItemCountDecriment(
                                                                    state
                                                                        .count));
                                                          },
                                                          icon: const Icon(
                                                            FontAwesomeIcons
                                                                .circleMinus,
                                                            color: colorwhite,
                                                            size: 20,
                                                          ),
                                                        )
                                                      : const SizedBox(
                                                          width: 40,
                                                        ),
                                                  Text(
                                                    state.count.toString(),
                                                    style: fontstyle(
                                                        color: colorwhite,
                                                        fontSize: 15),
                                                  ),
                                                  state.count < product.stock
                                                      ? IconButton(
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    BuynowselectionBloc>()
                                                                .add(
                                                                  ItemCountIncriment(
                                                                    state.count,
                                                                  ),
                                                                );
                                                          },
                                                          icon: const Icon(
                                                            FontAwesomeIcons
                                                                .circlePlus,
                                                            color: colorwhite,
                                                            size: 20,
                                                          ),
                                                        )
                                                      : const SizedBox(),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            // height: size.height * 0.15,
                            width: size.width - 20,
                            decoration: decoration1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: colorblue),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state.address,
                                              style:
                                                  fontstyle(color: colorblue),
                                            ),
                                            DropdownButton(
                                                underline: const SizedBox(),
                                                items: addresslist.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  log(value!);
                                                  // selectedaddress = value;
                                                  // log(selectedaddress);
                                                  context
                                                      .read<
                                                          BuynowselectionBloc>()
                                                      .add(
                                                          AddressSelectionEvent(
                                                              value));
                                                })
                                          ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: colorblue),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state.paymentmethod,
                                              style:
                                                  fontstyle(color: colorblue),
                                            ),
                                            DropdownButton(
                                                underline: const SizedBox(),
                                                items: paymentmethods.map<
                                                        DropdownMenuItem<
                                                            String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  log(value!);
                                                  // selectedaddress = value;
                                                  // log(selectedaddress);
                                                  context
                                                      .read<
                                                          BuynowselectionBloc>()
                                                      .add(PaymentselctionEvent(
                                                          value));
                                                })
                                          ]),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 10),
                          child: Container(
                            decoration: decoration1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'item count',
                                        style: fontstyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: colorblue),
                                      ),
                                      Text(
                                        state.count.toString(),
                                        style: fontstyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'tax',
                                        style: fontstyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: colorblue),
                                      ),
                                      Text(
                                        '${(12 / 100) * (product.price * state.count)}',
                                        style: fontstyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total',
                                        style: fontstyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: colorblue),
                                      ),
                                      Text(
                                        state.count == 0
                                            ? '0'
                                            : '${product.price * state.count + (12 / 100) * product.price}',
                                        style: fontstyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
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
                          onPressed: () async {
                            if (state.count == 0) {
                              ScaffoldMessenger.of(context)
                                ..removeCurrentSnackBar()
                                ..showSnackBar(
                                  const SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Row(
                                      children: [
                                        Icon(
                                          Icons.info,
                                          color: colorwhite,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Please check the item count')
                                      ],
                                    ),
                                  ),
                                );
                            } else if (state.address == 'select Adress') {
                              ScaffoldMessenger.of(context)
                                ..removeCurrentSnackBar()
                                ..showSnackBar(
                                  const SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Row(
                                      children: [
                                        Icon(
                                          Icons.info,
                                          color: colorwhite,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Please Select a Address')
                                      ],
                                    ),
                                  ),
                                );
                            } else if (state.paymentmethod ==
                                'Select PAyment Method') {
                              ScaffoldMessenger.of(context)
                                ..removeCurrentSnackBar()
                                ..showSnackBar(
                                  const SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Row(
                                      children: [
                                        Icon(
                                          Icons.info,
                                          color: colorwhite,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Please select a Payment Method')
                                      ],
                                    ),
                                  ),
                                );
                            } else {
                              context
                                  .read<BuynowselectionBloc>()
                                  .add(LoadingEvent(true));
                              buyNowOrderplacing(
                                  product,
                                  state.count,
                                  state.address,
                                  state.paymentmethod,
                                  product.price * state.count +
                                      (12 / 100) * product.price,
                                  context);
                              await Future.delayed(const Duration(seconds: 2));
                              // ignore: use_build_context_synchronously
                              context
                                  .read<BuynowselectionBloc>()
                                  .add(LoadingEvent(false));
                            }
                          },
                          child: Text(
                            'Place Order',
                            style: fontstyle(
                              color: colorblue,
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}

var addresslist = ['dnvjdnvjnn', 'dnvjdnvjnn2', 'dnvjdnvjnn3'];
var paymentmethods = ['Cod', 'upi'];