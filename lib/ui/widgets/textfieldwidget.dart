import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';
import 'package:email_validator/email_validator.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  final String label;
  final bool ispass;
  final TextEditingController controller;
  TextEditingController? passverify;
  final TextInputType type;
  TextFieldWidget(
      {super.key,
      required this.label,
      required this.ispass,
      required this.controller,
      this.passverify,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'please enter $label ';
            } else if (ispass) {
              if (controller.text.length < 8) {
                return 'password must be minimum 8 characters';
              } else if (passverify != null) {
                if (controller.text != passverify!.text) {
                  return 'password must be same';
                }
              }
            } else if (label == 'email') {
              bool isvalid = EmailValidator.validate(controller.text);
              if (!isvalid) {
                return 'email not valid';
              }
            } else if (label == 'phone') {
              if (controller.text.length < 10) {
                return 'phone number should be 10';
              }
            }
            return null;
          },
          controller: controller,
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
          ),
        ));
  }
}
