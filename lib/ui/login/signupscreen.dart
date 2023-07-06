import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/homescreen.dart';
import 'package:project2/ui/widgets/textfieldwidget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: size.height / 4,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Rectanglewavebg.png'),
                  fit: BoxFit.fill),
            ),
            child: Center(
              child: Text(
                'Signup',
                style: fontstyle(
                    color: textcolorwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          const TextFieldWidget(label: 'Username', ispass: false),
          const TextFieldWidget(label: 'email', ispass: false),
          const TextFieldWidget(label: 'phone', ispass: false),
          const TextFieldWidget(label: 'Password', ispass: true),
          const TextFieldWidget(label: 'confirm Password', ispass: true),
          SizedBox(
            height: size.height * 0.03,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              side: const BorderSide(
                color: colorblue,
                width: 2.0,
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
            },
            child: Text(
              'SigUp',
              style: fontstyle(color: textcolorblue),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          const Text("or Signup With"),
          const Divider(),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 17,
                child: CircleAvatar(
                  backgroundColor: colorwhite,
                  radius: 15,
                  child: Center(child: Icon(FontAwesomeIcons.google)),
                ),
              ),
              SizedBox(
                width: size.width * 0.03,
              ),
              const CircleAvatar(
                radius: 17,
                child: CircleAvatar(
                  backgroundColor: colorwhite,
                  radius: 15,
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.phone,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
