part of 'calender_bloc.dart';

@immutable
abstract class CalenderEvent {}

class DaySelectingEvent extends CalenderEvent {
  final DateTime selectedDay;

  DaySelectingEvent(this.selectedDay);
}

class SloteSelectingEvent extends CalenderEvent {
  final int? slot;

  SloteSelectingEvent(this.slot);
}

class GetBookedServicesEvent extends CalenderEvent {
  final List<GetServicemodel> bookedserviceslist;

  GetBookedServicesEvent(this.bookedserviceslist);
}
