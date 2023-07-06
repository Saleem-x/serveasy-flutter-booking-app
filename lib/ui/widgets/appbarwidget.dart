import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/constents/colors.dart';

class AppBArWidget extends StatelessWidget {
  const AppBArWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorblue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.barsStaggered,
              color: colorwhite,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
              color: colorwhite,
            ),
          ),
        ],
      ),
    );
  }
}
