import 'dart:developer';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
        'profileimage': 'no-img',
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
    log(' $e');
    return false;
  }
}

signInWithGoogle(BuildContext context) async {
  log('1');
  final FirebaseAuth auth = FirebaseAuth.instance;
  auth.signOut();
  final GoogleSignIn googleSignIn = GoogleSignIn();
  log('2');
  final GoogleSignInAccount? googleSignInAccount;
  if (Platform.isAndroid) {
    log('3');
    googleSignInAccount = await googleSignIn.signIn();
    log('4');
    final GoogleSignInAuthentication googleAuth =
        await googleSignInAccount!.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    log('5');

    // ignore: use_build_context_synchronously
    context.read<LoginscreenBloc>().add(Loadingevent(isloading: true));
    // ignore: use_build_context_synchronously
    context.read<SignupBloc>().add(UserCreated(context));

    final UserCredential userCredential =
        await auth.signInWithCredential(credential);

    final sharedprefs = await SharedPreferences.getInstance();
    sharedprefs.setBool('userin', true);
    // ignore: use_build_context_synchronously
    context.read<LoginscreenBloc>().add(Loadingevent(isloading: false));
    log(userCredential.user.toString());
    uploaduserdetails(googleSignInAccount, userCredential.user!);
  }

// // ignore: use_build_context_synchronously
//   try {
//     final UserCredential userCredential =
//         await auth.signInWithCredential(credential);

//     return userCredential;
//   } catch (e) {
//     // ignore: use_build_context_synchronously

//     log(e.toString());
//     return null;
//   }
}

uploaduserdetails(GoogleSignInAccount account, User user) async {
  try {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    await firestore.collection('users').doc(user.uid).set({
      'name': user.displayName,
      'age': user.email,
      'profileimage': user.photoURL,
    });
  } catch (e) {
    log('Sign up error: $e');
  }
}
