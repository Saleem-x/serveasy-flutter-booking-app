part of 'bookinglist_bloc.dart';

@freezed
class BookinglistState with _$BookinglistState {
  const factory BookinglistState(
      {required List<GetServicemodel>? bookedservices}) = _BookinglistState;

  factory BookinglistState.initial() =>
      const BookinglistState(bookedservices: null);
}
