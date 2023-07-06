import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/login/loginscreen.dart';
import 'package:project2/ui/login/signupscreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
                'Welcome',
                style: fontstyle(
                    color: textcolorwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            height: size.height * 0.3,
            child: Lottie.asset('assets/animations/welcome-animation.json'),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              textAlign: TextAlign.center,
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
              style: fontstyle(),
            ),
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          const Text('do yoy have a account?'),
          SizedBox(
            width: size.width / 2.5,
            child: OutlinedButton(
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
                      builder: (context) => const LoginScreen(),
                    ));
              },
              child: Text(
                'login',
                style: fontstyle(color: textcolorblue),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          const Text('Create New Account!'),
          SizedBox(
            width: size.width / 2.5,
            child: OutlinedButton(
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
                      builder: (context) => const SignUpScreen(),
                    ));
              },
              child: Text(
                'SignUp',
                style: fontstyle(color: textcolorblue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
