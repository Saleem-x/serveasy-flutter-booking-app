import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: CustomScrollView(slivers: []),
    );
  }
}
