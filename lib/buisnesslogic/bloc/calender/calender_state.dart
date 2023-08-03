part of 'calender_bloc.dart';

class CalenderState {
  final DateTime selectedDay;
  final int? slot;
  final List<GetServicemodel>? bookedservices;
  final List<int> bookedslots;
  CalenderState(
      this.selectedDay, this.slot, this.bookedservices, this.bookedslots);
}

class CalenderInitial extends CalenderState {
  CalenderInitial(
      super.selectedDay, super.slot, super.bookedservices, super.bookedslots);
}
