import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/buisnesslogic/bloc/orderslist/orderlist_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/buynow.dart';
import 'package:project2/functions/orderslisting.dart';

class OrderesListScreen extends StatelessWidget {
  const OrderesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      getallorders(context);
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
          'Your Orders',
          style: fontstyle(color: colorwhite, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<OrderlistBloc, OrderlistState>(
        builder: (context, state) {
          return state.orderslist == null
              ? Center(
                  child:
                      Lottie.asset('assets/animations/waitinganimation.json'),
                )
              : state.orderslist!.isEmpty
                  ? const Center(
                      child: Text(
                          textAlign: TextAlign.center,
                          "You Have'nt placed any orders\nmake some orders"),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: ListView.separated(
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
                                              image: NetworkImage(state
                                                  .orderslist![index]
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
                                                state.orderslist![index].product
                                                    .name,
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
                                                'total ₹${state.orderslist![index].total.toString()}',
                                                style: fontstyle(
                                                  color: colorwhite,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Status:${state.orderslist![index].status} ',
                                                    style: fontstyle(
                                                        color: colorwhite,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    formatMicrosecondsSinceEpoch(
                                                        state.orderslist![index]
                                                            .date),
                                                    style: fontstyle(
                                                        color: colorwhite,
                                                        fontSize: 15),
                                                  ),
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
                                height: size.height * 0.03,
                              ),
                          itemCount: state.orderslist!.length),
                    );
        },
      ),
    );
  }
}
