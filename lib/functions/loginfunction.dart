import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/loginscreen/loginscreen_bloc.dart';
import 'package:project2/buisnesslogic/bloc/signup/signup_bloc.dart';

import 'package:project2/presentation/widgets/bottomnavigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> login(String email, String password, BuildContext context) async {
  try {
    context.read<LoginscreenBloc>().add(Loadingevent(isloading: true));
    // UserCredential userCredential =
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    await Future.delayed(const Duration(seconds: 3));
    final sharedprefs = await SharedPreferences.getInstance();
    sharedprefs.setBool('userin', true);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const BottomNavBarWidget(),
        ),
        (route) => false);
    // ignore: use_build_context_synchronously
    context.read<LoginscreenBloc>().add(Loadingevent(isloading: false));
  } catch (e) {
    if (e.toString() ==
        '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.') {
      context.read<LoginscreenBloc>().add(Loadingevent(isloading: false));
      context
          .read<SignupBloc>()
          // ignore: use_build_context_synchronously
          .add(UserExistsevent(true, context, 'password Not matching'));
    } else {
      context.read<LoginscreenBloc>().add(Loadingevent(isloading: false));
      context
          .read<SignupBloc>()
          // ignore: use_build_context_synchronously
          .add(UserExistsevent(true, context, 'No User Exist in this email'));
    }
  }
}
