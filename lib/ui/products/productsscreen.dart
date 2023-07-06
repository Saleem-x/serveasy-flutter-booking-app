import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return GridView.builder(
      itemCount: 30,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Flexible(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    color: colorgreyshade,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/TOWN MOTO.jpg'),
                        fit: BoxFit.cover)),
                // width: size.width / 2,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                // height: size.height * 0.09,
                decoration: const BoxDecoration(
                    color: colorblue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                // width: size.width / 2,
                child: Center(
                    child: Text(
                  'item$index',
                  style: fontstyle(color: textcolorwhite, fontSize: 17),
                )),
              ),
            )
          ]),
        );
      },
    );
  }
}
