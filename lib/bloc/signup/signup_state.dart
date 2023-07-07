part of 'signup_bloc.dart';

class SignupState {
  final bool isAlready;

  SignupState(this.isAlready);
}

class SignupInitial extends SignupState {
  SignupInitial(super.isAlready);
}
