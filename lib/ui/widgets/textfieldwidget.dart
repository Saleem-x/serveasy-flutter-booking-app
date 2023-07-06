import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final bool ispass;
  const TextFieldWidget({super.key, required this.label, required this.ispass});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: TextFormField(
          obscureText: ispass,
          decoration: InputDecoration(
            label: Text(
              label,
              style: fontstyle(color: textcolorblue),
            ),
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
          ),
        ));
  }
}
