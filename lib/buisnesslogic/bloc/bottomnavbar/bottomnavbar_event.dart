part of 'bottomnavbar_bloc.dart';

class BottomnavbarEvent {}

class Changepage extends BottomnavbarEvent {
  final int index;
  Changepage({required this.index});
}
