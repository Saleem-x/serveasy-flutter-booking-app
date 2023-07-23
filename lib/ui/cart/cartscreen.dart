import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/cart/cart_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/functions/addtocart.dart';
import 'package:project2/ui/cart/checkoutscreen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getcartitems(context);
      context.read<CartBloc>().add(IncrementProductCountEvent(0));
    });
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Text(
          'Cart',
          style: fontstyle(color: colorwhite, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.cartitems == null
              ? Center(
                  child:
                      Lottie.asset('assets/animations/waitinganimation.json'),
                )
              : state.cartitems!.isEmpty
                  ? Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Cart is Empty\n if you are intrested in any products\n please add some products',
                        style: fontstyle(fontSize: 17),
                      ),
                    )
                  : Stack(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 5,
                            left: 10,
                            right: 10,
                            bottom: size.height * 0.1),
                        child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Container(
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
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 5,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                            image: DecorationImage(
                                                image: NetworkImage(state
                                                    .cartitems![index]
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  state.cartitems![index]
                                                      .product.name,
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
                                                  'price ₹${state.cartitems![index].product.price * state.cartitems![index].itemcount}',
                                                  style: fontstyle(
                                                    color: colorwhite,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    state.cartitems![index]
                                                                .itemcount >
                                                            0
                                                        ? IconButton(
                                                            onPressed: () {
                                                              state
                                                                  .cartitems![
                                                                      index]
                                                                  .itemcount -= 1;
                                                              context
                                                                  .read<
                                                                      CartBloc>()
                                                                  .add(
                                                                    DecrementProductCountEvent(state
                                                                        .cartitems![
                                                                            index]
                                                                        .itemcount),
                                                                  );
                                                            },
                                                            icon: const Icon(
                                                              FontAwesomeIcons
                                                                  .circleMinus,
                                                              color: colorwhite,
                                                              size: 20,
                                                            ),
                                                          )
                                                        : IconButton(
                                                            onPressed: () {
                                                              removefromcart(
                                                                  state.cartitems![
                                                                      index],
                                                                  context);
                                                            },
                                                            icon: const Icon(
                                                              Icons.delete,
                                                              color: colorwhite,
                                                            )),
                                                    Text(
                                                      state.cartitems![index]
                                                          .itemcount
                                                          .toString(),
                                                      style: fontstyle(
                                                          color: colorwhite,
                                                          fontSize: 15),
                                                    ),
                                                    state.count <
                                                            state
                                                                .cartitems![
                                                                    index]
                                                                .product
                                                                .stock
                                                        ? IconButton(
                                                            onPressed: () {
                                                              state
                                                                  .cartitems![
                                                                      index]
                                                                  .itemcount += 1;
                                                              context
                                                                  .read<
                                                                      CartBloc>()
                                                                  .add(
                                                                    IncrementProductCountEvent(
                                                                      state
                                                                          .count,
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
                            separatorBuilder: (context, index) => SizedBox(
                                  height: size.height * 0.02,
                                ),
                            itemCount: state.cartitems!.length),
                      ),

                      // const Spacer(),
                      SlidingUpPanel(
                        borderRadius: BorderRadius.circular(20),
                        color: colorblue,
                        minHeight: size.height * 0.09,
                        maxHeight: size.height / 3,
                        panel: Column(children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Checkout ',
                                  style: fontstyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: colorwhite),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Container(
                              decoration: decoration1,
                              child: Padding(
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
                                          'item count',
                                          style: fontstyle(
                                              color: colorwhite,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          state.cartitems!.length.toString(),
                                          style: fontstyle(color: colorwhite),
                                        ),
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
                                          'tax',
                                          style: fontstyle(
                                              color: colorwhite,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          carttaxcalculate(state.cartitems!)
                                              .toString(),
                                          style: fontstyle(color: colorwhite),
                                        ),
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
                                          'total',
                                          style: fontstyle(
                                              color: colorwhite,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '${subtotal(state.cartitems!) + carttaxcalculate(state.cartitems!)}',
                                          style: fontstyle(color: colorwhite),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              side: const BorderSide(
                                color: colorwhite,
                                width: 2.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CartCheckoutScreen(
                                    cartitemslist: state.cartitems!,
                                    total: subtotal(state.cartitems!) +
                                        carttaxcalculate(state.cartitems!),
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Checkout',
                              style: fontstyle(color: Colors.white),
                            ),
                          ),
                        ]),
                      )
                    ]);
        },
      ),
    );
  }
}
