import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project2/ui/widgets/bottomnavigation.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial(false)) {
    on<UserExistsevent>((event, emit) {
      if (event.isAlready) {
        ScaffoldMessenger.of(event.context)
          ..removeCurrentSnackBar()
          ..showSnackBar(SnackBar(
              content: Row(
            children: [
              const Icon(Icons.info),
              const SizedBox(
                width: 10,
              ),
              Text(event.content)
            ],
          )));
      }
    });
    on<UserCreated>((event, emit) async {
      await Future.delayed(const Duration(seconds: 3));
      // ignore: use_build_context_synchronously
      Navigator.of(event.context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const BottomNavBarWidget(),
        ),
        (route) => false,
      );
    });
  }
}
