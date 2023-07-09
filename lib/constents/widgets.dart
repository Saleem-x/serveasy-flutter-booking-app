import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/constents/colors.dart';

final drawerwidget = Drawer(
    child: Column(
  children: [
    ListTile(
      title: Text(
        'About',
        style: fontstyle(color: colorblue, fontSize: 18),
      ),
      leading: const Icon(
        Icons.info,
        color: colorblue,
      ),
    ),
    ListTile(
      title: Text(
        'Privacy Policy',
        style: fontstyle(color: colorblue, fontSize: 18),
      ),
      leading: const Icon(
        FontAwesomeIcons.shield,
        color: colorblue,
      ),
    ),
    ListTile(
      title: Text(
        'Share',
        style: fontstyle(color: colorblue, fontSize: 18),
      ),
      leading: const Icon(
        FontAwesomeIcons.shareNodes,
        color: colorblue,
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'version 1.0.0',
          style: fontstyle(color: colorlightshade),
        )
      ],
    ),
  ],
));
