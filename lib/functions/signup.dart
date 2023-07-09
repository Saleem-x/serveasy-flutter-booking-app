import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/loginscreen/loginscreen_bloc.dart';
import 'package:project2/bloc/signup/signup_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> signUp(String email, String password, String name, String phone,
    BuildContext context) async {
  context.read<LoginscreenBloc>().add(Loadingevent(isloading: true));
  bool isUserExist = await isEmailAlreadyRegistered(email);
  if (isUserExist) {
    // ignore: use_build_context_synchronously
    context
        .read<SignupBloc>()
        // ignore: use_build_context_synchronously
        .add(UserExistsevent(true, context, 'User Exist in this email'));
    // ignore: use_build_context_synchronously
    context.read<LoginscreenBloc>().add(Loadingevent(isloading: false));
  } else {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User user = userCredential.user!;
      final sharedprefs = await SharedPreferences.getInstance();
      sharedprefs.setBool('userin', true);
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      await firestore.collection('users').doc(user.uid).set({
        'name': name,
        'age': phone,
      });
      // ignore: use_build_context_synchronously
      context.read<SignupBloc>().add(UserCreated(context));
    } catch (e) {
      log('Sign up error: $e');
    }
  }
}

Future<bool> isEmailAlreadyRegistered(String email) async {
  try {
    List<String> signInMethods =
        await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
    return signInMethods.isNotEmpty;
  } catch (e) {
    log('Error checking email registration: $e');
    return false;
  }
}
