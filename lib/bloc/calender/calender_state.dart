part of 'calender_bloc.dart';

class CalenderState {
  final DateTime selectedDay;

  CalenderState(this.selectedDay);
}

class CalenderInitial extends CalenderState {
  CalenderInitial(super.selectedDay);
}
