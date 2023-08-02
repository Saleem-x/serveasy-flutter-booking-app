import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/addtocart.dart';
import 'package:project2/domain/models/product/productmodel.dart';
import 'package:project2/presentation/products/buynowscreen.dart';

class ProductView extends StatelessWidget {
  final ProductModel product;
  const ProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              pinned: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: colorwhite,
                  )),
              backgroundColor: Colors.transparent,
              elevation: 0,
              expandedHeight: size.height / 2,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: size.height / 1.5,
                  decoration: BoxDecoration(
                    color: colorblue,
                    image: DecorationImage(
                        image: NetworkImage(product.imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: size.height * 0.013,
                          width: size.width * 0.12,
                          decoration: BoxDecoration(
                            color: colorlightshade,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: fontstyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: colorblack),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Text(
                                'Price ₹${product.price}',
                                style: fontstyle(color: colorgreyshade),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  side: const BorderSide(
                                    color: colorblack,
                                    width: 2.0,
                                  ),
                                ),
                                onPressed: () {
                                  if (product.stock == 0) {
                                    ScaffoldMessenger.of(context)
                                      ..removeCurrentSnackBar()
                                      ..showSnackBar(
                                        SnackBar(
                                          backgroundColor: Colors.red,
                                          content: Row(
                                            children: [
                                              const Icon(
                                                Icons.info,
                                                color: colorwhite,
                                              ),
                                              SizedBox(
                                                width: size.width * 0.03,
                                              ),
                                              Text(
                                                'item is currently out of stock',
                                                style: fontstyle(
                                                    color: colorwhite),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BuyNowScreen(
                                          product: product,
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Buy Now',
                                  style: fontstyle(color: colorblack),
                                ),
                              ),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  side: const BorderSide(
                                    color: colorblack,
                                    width: 2.0,
                                  ),
                                ),
                                onPressed: () async {
                                  bool isAlready =
                                      await findduplicate(context, product);
                                  if (isAlready) {
                                    // ignore: use_build_context_synchronously
                                    ScaffoldMessenger.of(context)
                                      ..removeCurrentSnackBar()
                                      ..showSnackBar(const SnackBar(
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
                                              Text(
                                                  'Product product Allready in cart cart')
                                            ],
                                          )));
                                  } else {
                                    // ignore: use_build_context_synchronously
                                    await addtocart(product, 1, context);
                                  }
                                },
                                child: Text(
                                  'Add to Cart',
                                  style: fontstyle(color: colorblack),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width - 30,
                    child: const Divider(
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          'About:-',
                          style: fontstyle(
                            color: colorblack,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          product.description,
                          style: fontstyle(
                            color: colorblack,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width - 30,
                    child: const Divider(
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
