import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/buisnesslogic/bloc/product/products_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/functions/getproducts.dart';
import 'package:project2/presentation/products/productview.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getAllProducts(context);
    });
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return state.productlist == null
            ? Center(
                child: Lottie.asset('assets/animations/waitinganimation.json'))
            : state.productlist!.isEmpty
                ? const Center(
                    child: Text(' currently No Products is Available'),
                  )
                : ListView.builder(
                    itemCount: state.productlist!.length > 3
                        ? 3
                        : state.productlist!.length,
                    scrollDirection: Axis.horizontal,
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
                                width: size.width / 3,
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorwhite,
                                  boxShadow: [insetboxshadow],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                width: size.width / 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        state.productlist![index].name,
                                        overflow: TextOverflow.ellipsis,
                                        style: fontstyle(
                                            color: colorblack, fontSize: 17),
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
                                    ],
                                  ),
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
