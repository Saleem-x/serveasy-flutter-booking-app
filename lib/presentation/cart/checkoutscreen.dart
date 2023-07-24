import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/checkout/checkout_bloc.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/functions/addtocart.dart';
import 'package:project2/models/cartitemmodel.dart';

import '../../constents/colors.dart';

class CartCheckoutScreen extends StatelessWidget {
  final List<CartItemmodel> cartitemslist;
  final double total;
  const CartCheckoutScreen(
      {super.key, required this.cartitemslist, required this.total});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CheckoutBloc>().add(LoadingEvent(false));
      context.read<CheckoutBloc>().add(AddressSelectionEvent('Select Address'));
      context
          .read<CheckoutBloc>()
          .add(PaymentselctionEvent('Select payment method'));
    });
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<CheckoutBloc, CheckoutState>(
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
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: const Offset(0,
                                                3), // changes the shadow position
                                          ),
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(cartitemslist[0]
                                                .product
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
                                            horizontal: 15, vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'products count:${cartitemslist.length}',
                                              style: fontstyle(
                                                  color: colorwhite,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Divider(),
                                            SizedBox(
                                              height: size.height * 0.005,
                                            ),
                                            Text(
                                              'total items ${totalproduct(cartitemslist)}',
                                              style: fontstyle(
                                                color: colorwhite,
                                                fontSize: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.005,
                                            ),
                                            Text(
                                              'total price ₹$total',
                                              style: fontstyle(
                                                color: colorwhite,
                                                fontSize: 17,
                                              ),
                                            ),
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
                            child: Column(
                              children: [
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
                                                      .read<CheckoutBloc>()
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
                                            style: fontstyle(color: colorblue),
                                          ),
                                          DropdownButton(
                                            underline: const SizedBox(),
                                            items: paymentmethods
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              log(value!);
                                              // selectedaddress = value;
                                              // log(selectedaddress);
                                              context.read<CheckoutBloc>().add(
                                                  PaymentselctionEvent(value));
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                horizontal: 30, vertical: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'order overview',
                                      style: fontstyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: colorgreyshade),
                                    ),
                                    const Divider()
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                ListView.separated(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              cartitemslist[index].product.name,
                                              style: fontstyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: colorgreyshade),
                                            ),
                                            Text(
                                              cartitemslist[index]
                                                  .itemcount
                                                  .toString(),
                                              style: fontstyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                    itemCount: cartitemslist.length),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Payment method',
                                      style: fontstyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: colorgreyshade),
                                    ),
                                    Text(
                                      state.paymentmethod ==
                                              'Select payment method'
                                          ? ' '
                                          : state.paymentmethod,
                                      style: fontstyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
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
                          if (state.address == 'Select Address') {
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
                              'Select payment method') {
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
                                .read<CheckoutBloc>()
                                .add(LoadingEvent(true));
                            checkout(cartitemslist, context);
                            await Future.delayed(const Duration(seconds: 2));
                            // ignore: use_build_context_synchronously
                            context
                                .read<CheckoutBloc>()
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
                  ));
          },
        ),
      ),
    );
  }
}

var addresslist = ['dnvjdnvjnn', 'dnvjdnvjnn2', 'dnvjdnvjnn3'];
var paymentmethods = ['Cod', 'upi'];
