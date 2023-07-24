import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class ProfileOverviecontainer extends StatelessWidget {
  const ProfileOverviecontainer({
    super.key,
    required this.size,
    required this.title,
  });

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      width: size.width - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: colorblue),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: fontstyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: colorgreyshade),
            ),
          ],
        ),
      ),
    );
  }
}
