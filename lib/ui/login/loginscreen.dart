import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/widgets/bottomnavigation.dart';
import 'package:project2/ui/widgets/textfieldwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  'Login',
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
              child:
                  Lottie.asset('assets/animations/loginscreenanimation.json'),
            ),
            const TextFieldWidget(
              label: 'Username',
              ispass: false,
            ),
            const TextFieldWidget(
              label: 'password',
              ispass: false,
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
                      builder: (context) => const BottomNavBarWidget(),
                    ));
              },
              child: Text(
                'Login',
                style: fontstyle(color: textcolorblue),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("don't you hava a account?"),
                Text(
                  "create One!",
                  style: fontstyle(color: textcolorblue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
