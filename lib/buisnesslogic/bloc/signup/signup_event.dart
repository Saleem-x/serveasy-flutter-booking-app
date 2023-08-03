part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class UserExistsevent extends SignupEvent {
  final bool isAlready;
  final String content;
  final BuildContext context;

  UserExistsevent(this.isAlready, this.context, this.content);
}

class UserCreated extends SignupEvent {
  final BuildContext context;

  UserCreated(this.context);
}
