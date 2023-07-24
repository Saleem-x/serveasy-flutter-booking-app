import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/presentation/products/productsscreen.dart';
import 'package:project2/presentation/services/serviceswidget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppBar(
              backgroundColor: colorwhite,
              centerTitle: true,
              title: Text(
                'Services & Products',
                style: fontstyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: colorblack),
              ),
              automaticallyImplyLeading: false,
              bottom: TabBar(
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: -25, vertical: 0),
                labelColor: colorblack,
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                unselectedLabelColor: colorlightshade,
                indicator: BoxDecoration(
                  border: Border.all(color: colorblack),
                  borderRadius: BorderRadius.circular(30),
                ),
                tabs: const [
                  Padding(
                    padding: EdgeInsets.only(right: 35.0),
                    child: Tab(text: 'services'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Tab(text: 'products'),
                  ),
                ],
              ),
            ),
          ),
          body:
              const TabBarView(children: [ServicesWidget(), ProductsScreen()]),
        ),
      ),
    );
  }
}
