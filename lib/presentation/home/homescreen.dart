import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:project2/constents/colors.dart';
import 'package:project2/constents/widgets.dart';
import 'package:project2/presentation/widgets/customerfeedbackwidget.dart';
import 'package:project2/presentation/widgets/productwidget.dart';
import 'package:project2/presentation/widgets/serviceswidget.dart';
import 'package:project2/presentation/search/searchscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: drawerwidget,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              pinned: true,
              // backgroundColor: colorblue,
              expandedHeight: size.height / 5,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: const BoxDecoration(
                    color: colorblue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'We Provide You The Best Services',
                        style: fontstyleitalic(fontSize: 17, color: colorwhite),
                      )
                    ],
                  ),
                ),
                title: Text(
                  'Serveasy',
                  style: fontstyle(letterSpacing: 2),
                ),
                centerTitle: true,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.bell),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchScreen(),
                        ));
                  },
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'Services',
                          style: fontstyle(
                              fontSize: 17, color: colorgreyshade.shade500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: size.height * 0.28,
                      child: const SearvicesList(),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'products',
                          style: fontstyle(
                              fontSize: 17, color: colorgreyshade.shade500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: size.height * 0.28,
                      child: const ProductWidget(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'Feedbacks',
                          style: fontstyle(
                              fontSize: 17, color: colorgreyshade.shade500),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: FeedBackWidget(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
