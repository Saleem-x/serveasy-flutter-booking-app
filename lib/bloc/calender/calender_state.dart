part of 'calender_bloc.dart';

class CalenderState {
  final DateTime selectedDay;
  final int? slot;
  final List<GetServicemodel>? bookedservices;
  CalenderState(this.selectedDay, this.slot, this.bookedservices);
}

class CalenderInitial extends CalenderState {
  CalenderInitial(super.selectedDay, super.slot, super.bookedservices);
}
