import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project2/buisnesslogic/bloc/loginscreen/loginscreen_bloc.dart';

import 'package:project2/buisnesslogic/bloc/signup/signup_bloc.dart';
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
  final FirebaseAuth auth = FirebaseAuth.instance;
  if (auth.currentUser != null) {
    await auth.signOut();
  }
  final GoogleSignIn googleSignIn = GoogleSignIn();
  // if (googleSignIn.currentUser != null) {
  //   await googleSignIn.disconnect();
  // }
  final GoogleSignInAccount? googleSignInAccount;
  googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleAuth =
      await googleSignInAccount!.authentication;

  final OAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

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
  await uploaduserdetails(googleSignInAccount, userCredential.user!);
}

uploaduserdetails(GoogleSignInAccount account, User user) async {
  List details = await getuserdetails();
  try {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    await firestore.collection('users').doc(user.uid).set({
      'name': details[0] == user.displayName ? user.displayName : details[0],
      'age': details[1] == user.email ? user.displayName : details[1],
      'profileimage':
          details[2] == user.photoURL ? user.displayName : details[2],
    });
  } catch (e) {
    log('Sign up error: $e');
  }
}

getuserdetails() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User user = firebaseAuth.currentUser!;

  firestore
      .collection('users')
      .doc(user.uid)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      String name = data['name'];
      String phone = data['age'];
      String imgageurl = data['profileimage'];

      return [name, phone, imgageurl];
    } else {
      return [];
    }
    // ignore: body_might_complete_normally_catch_error
  }).catchError((error) {
    log('Error getting document: $error');
  });
}
