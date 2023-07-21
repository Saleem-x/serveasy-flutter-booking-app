import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class OrderesListScreen extends StatelessWidget {
  const OrderesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes the shadow position
                              ),
                            ],
                            image: DecorationImage(
                                image: NetworkImage('product.imageUrl'),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' product.name',
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
                                  "price ₹${'product' '.price.toString()'}",
                                  style: fontstyle(
                                    color: colorwhite,
                                    fontSize: 17,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'state.count.toString()',
                                      style: fontstyle(
                                          color: colorwhite, fontSize: 15),
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
            itemCount: 3),
      ),
    );
  }
}
