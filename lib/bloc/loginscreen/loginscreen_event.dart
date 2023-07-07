part of 'loginscreen_bloc.dart';

@immutable
abstract class LoginscreenEvent {}

class Loadingevent extends LoginscreenEvent {
  final bool isloading;

  Loadingevent({required this.isloading});
}
