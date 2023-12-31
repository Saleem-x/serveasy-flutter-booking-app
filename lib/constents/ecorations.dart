import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:project2/constents/colors.dart';

final textfielddecoration1 = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(
      color: colorblue,
      width: 2.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(
      color: Colors.blue,
      width: 2.0,
    ),
  ),
);

final productdecoration = BoxDecoration(
  color: colorgreyshade,
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.5),
      spreadRadius: 1.5,
      blurRadius: 5,
      offset: const Offset(0, 3),
      inset: true,
    ),
  ],
);

final insetboxshadow = BoxShadow(
  color: Colors.black.withOpacity(0.5),
  spreadRadius: 1,
  blurRadius: 5,
  // offset: const Offset(0, 3),
  inset: true,
);

final decoration1 = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.5),
      spreadRadius: 1.5,
      blurRadius: 5,
      offset: const Offset(0, 3),
      inset: true,
    ),
  ],
);
final decoration2 = BoxDecoration(
  // color: colorblue,
  borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.5),
      spreadRadius: 1.5,
      blurRadius: 5,
      offset: const Offset(0, 3),
      inset: true,
    ),
  ],
);
final decoration3 = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.5),
      spreadRadius: 1.5,
      blurRadius: 5,
      offset: const Offset(0, 3),
      inset: true,
    ),
  ],
);

Widget snackbarwidget(String title, Color color) {
  return SnackBar(
      backgroundColor: color,
      content: Row(
        children: [
          const Icon(
            Icons.info,
            color: colorwhite,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: fontstyle(),
          )
        ],
      ));
}
