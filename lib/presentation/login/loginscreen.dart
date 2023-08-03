import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/buisnesslogic/bloc/loginscreen/loginscreen_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/loginfunction.dart';
import 'package:project2/functions/signup.dart';
import 'package:project2/presentation/widgets/textfieldwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: BlocBuilder<LoginscreenBloc, LoginscreenState>(
              builder: (context, state) {
            return state.isloading
                ? SizedBox(
                    height: size.height,
                    child: Center(
                      child: Lottie.asset(
                          'assets/animations/loadinganimation1.json'),
                    ),
                  )
                : Column(
                    children: [
                      Container(
                        height: size.height / 4,
                        width: size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Rectanglewavebg.png'),
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
                        child: Lottie.asset(
                            'assets/animations/loginscreenanimation.json'),
                      ),
                      TextFieldWidget(
                          controller: emailcontroller,
                          label: 'email',
                          ispass: false,
                          type: TextInputType.emailAddress),
                      TextFieldWidget(
                          controller: passcontroller,
                          label: 'password',
                          ispass: true,
                          type: TextInputType.text),
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
                          if (formkey.currentState!.validate()) {
                            login(emailcontroller.text, passcontroller.text,
                                context);
                          }
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
                          InkWell(
                            onTap: () => signInWithGoogle(context),
                            child: const CircleAvatar(
                              radius: 17,
                              child: CircleAvatar(
                                backgroundColor: colorwhite,
                                radius: 15,
                                child: Center(
                                    child: Icon(FontAwesomeIcons.google)),
                              ),
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
                  );
          }),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passcontroller.dispose();
    super.dispose();
  }
}
