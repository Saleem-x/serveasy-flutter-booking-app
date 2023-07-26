import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project2/functions/booking.dart';
import 'package:project2/models/servisebookingmodel.dart';

part 'bookinglist_event.dart';
part 'bookinglist_state.dart';
part 'bookinglist_bloc.freezed.dart';

class BookinglistBloc extends Bloc<BookinglistEvent, BookinglistState> {
  BookinglistBloc() : super(BookinglistState.initial()) {
    on<Getallbookedservices>((event, emit) async {
      List<GetServicemodel>? bookedservices = await getuserbookedservices();
      return emit(state.copyWith(bookedservices: bookedservices));
    });
  }
}
