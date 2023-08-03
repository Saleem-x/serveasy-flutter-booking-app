import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/buisnesslogic/bloc/product/products_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/presentation/products/productview.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return state.productlist == null
            ? Center(
                child: Lottie.asset('assets/animations/waitinganimation.json'))
            : state.productlist!.isEmpty
                ? const Center(
                    child: Text(' currently No Products is Available'),
                  )
                : GridView.builder(
                    itemCount: state.productlist!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.7),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductView(
                              product: state.productlist![index],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Flexible(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: colorgreyshade,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            state.productlist![index].imageUrl),
                                        fit: BoxFit.cover)),
                                // width: size.width / 2,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                decoration: decoration2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              state.productlist![index].name,
                                              style: fontstyle(
                                                  color: colorblack,
                                                  fontSize: 17),
                                            ),
                                            // Text(
                                            //   state.productlist![index].stock >
                                            //           0
                                            //       ? 'in stock'
                                            //       : 'out of stock',
                                            //   style: fontstyle(
                                            //       color: colorblack,
                                            //       fontSize: 17),
                                            // ),
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  color:
                                                      state.productlist![index]
                                                                  .stock >
                                                              0
                                                          ? Colors.green
                                                          : Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '₹${state.productlist![index].price.toString()}',
                                              style: fontstyle(
                                                  color: colorblack,
                                                  fontSize: 17),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                  child: Icon(
                                                      CupertinoIcons.forward)),
                                            )
                                          ],
                                        ),
                                      ]),
                                ),
                              ),
                            )
                          ]),
                        ),
                      );
                    },
                  );
      },
    );
  }
}
