import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/product/products_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/functions/getproducts.dart';
import 'package:project2/ui/products/productview.dart';

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
                                height: size.height * 0.09,
                                decoration: BoxDecoration(
                                  color: colorwhite,
                                  boxShadow: [insetboxshadow],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                width: size.width / 3,
                                child: Center(
                                    child: Text(
                                  state.productlist![index].name,
                                  style: fontstyle(fontSize: 17),
                                )),
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
