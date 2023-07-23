part of 'calender_bloc.dart';

@immutable
abstract class CalenderEvent {}

class DaySelectingEvent extends CalenderEvent {
  final DateTime selectedDay;

  DaySelectingEvent(this.selectedDay);
}
