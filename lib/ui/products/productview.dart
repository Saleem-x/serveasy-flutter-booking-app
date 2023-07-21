import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/models/productmodel.dart';
import 'package:project2/ui/products/buynowscreen.dart';
import 'package:project2/ui/services/booknow.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductView extends StatelessWidget {
  final ProductModel product;
  const ProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 1.5,
                  decoration: BoxDecoration(
                    color: colorblue,
                    image: DecorationImage(
                        image: NetworkImage(product.imageUrl),
                        fit: BoxFit.cover),
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
              ],
            ),
            SlidingUpPanel(
              color: colorblue,
              minHeight: size.height / 3,
              maxHeight: size.height - 100,
              borderRadius: BorderRadius.circular(20),
              panel: Column(
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: fontstyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: colorwhite),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              'Price ₹${product.price}',
                              style: fontstyle(color: colorlightshade),
                            )
                          ],
                        ),
                        Column(
                          children: [
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
                                      builder: (context) => BuyNowScreen(
                                        product: product,
                                      ),
                                    ));
                              },
                              child: Text(
                                'Buy Now',
                                style: fontstyle(color: textcolorwhite),
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
                                      builder: (context) =>
                                          const BookNowScreen(),
                                    ));
                              },
                              child: Text(
                                'Add to Cart',
                                style: fontstyle(color: textcolorwhite),
                              ),
                            ),
                          ],
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
                            color: colorwhite,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      product.description,
                      style: fontstyle(
                        color: colorwhite,
                        fontSize: 17,
                      ),
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
