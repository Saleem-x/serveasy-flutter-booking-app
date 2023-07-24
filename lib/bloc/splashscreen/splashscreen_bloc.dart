import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project2/presentation/login/welocomescreen.dart';
import 'package:project2/presentation/widgets/bottomnavigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  SplashscreenBloc() : super(SplashscreenInitial()) {
    on<CheckLoginEvent>((event, emit) async {
      final sharedprefs = await SharedPreferences.getInstance();
      final userin = sharedprefs.getBool('userin');
      if (userin == true) {
        await Future.delayed(const Duration(seconds: 3));
        // ignore: use_build_context_synchronously
        Navigator.of(event.context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const BottomNavBarWidget(),
            ),
            (route) => false);
      } else {
        await Future.delayed(const Duration(seconds: 3));
        // ignore: use_build_context_synchronously
        Navigator.of(event.context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const WelcomeScreen(),
            ),
            (route) => false);
      }
    });
  }
}
