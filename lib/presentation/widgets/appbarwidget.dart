import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/presentation/notification/notificationscreen.dart';

class AppBArWidget extends StatelessWidget {
  const AppBArWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            FontAwesomeIcons.barsStaggered,
            color: colorblue,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ));
          },
          icon: const Icon(
            FontAwesomeIcons.bell,
            color: colorblue,
          ),
        ),
      ],
    );
  }
}
