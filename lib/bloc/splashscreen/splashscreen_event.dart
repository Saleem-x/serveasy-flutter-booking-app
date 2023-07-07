part of 'splashscreen_bloc.dart';

@immutable
abstract class SplashscreenEvent {}

class CheckLoginEvent extends SplashscreenEvent {
  final BuildContext context;

  CheckLoginEvent(this.context);
}
