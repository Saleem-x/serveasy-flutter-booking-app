import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/loginscreen/loginscreen_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/login/functions.dart';
import 'package:project2/ui/widgets/textfieldwidget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final passverifycontroller = TextEditingController();
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
                      TextFieldWidget(
                        label: 'Username',
                        ispass: false,
                        controller: namecontroller,
                        type: TextInputType.name,
                      ),
                      TextFieldWidget(
                          label: 'email',
                          ispass: false,
                          controller: emailcontroller,
                          type: TextInputType.emailAddress),
                      TextFieldWidget(
                          label: 'phone',
                          ispass: false,
                          controller: phonecontroller,
                          type: TextInputType.number),
                      TextFieldWidget(
                          label: 'Password',
                          ispass: false,
                          controller: passcontroller,
                          passverify: passverifycontroller,
                          type: TextInputType.visiblePassword),
                      TextFieldWidget(
                          label: 'confirm Password',
                          ispass: true,
                          controller: passverifycontroller,
                          passverify: passcontroller,
                          type: TextInputType.text),
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
                          if (formkey.currentState!.validate()) {
                            log('ok');
                            signUp(
                                emailcontroller.text,
                                passcontroller.text,
                                namecontroller.text,
                                phonecontroller.text,
                                context);
                          }
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
                              child:
                                  Center(child: Icon(FontAwesomeIcons.google)),
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
                  );
          },
        ),
      )),
    );
  }
}
