import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project2/models/servisebookingmodel.dart';

part 'calender_event.dart';
part 'calender_state.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  CalenderBloc() : super(CalenderInitial(DateTime.now(), null, null, [])) {
    on<DaySelectingEvent>((event, emit) {
      emit(CalenderState(event.selectedDay, state.slot, state.bookedservices,
          state.bookedslots));
    });
    on<SloteSelectingEvent>((event, emit) {
      emit(CalenderState(state.selectedDay, event.slot, state.bookedservices,
          state.bookedslots));
    });
    on<GetBookedServicesEvent>((event, emit) {
      emit(CalenderState(state.selectedDay, state.slot,
          event.bookedserviceslist, state.bookedslots));
    });
    on<GetBookedSlotsEvent>((event, emit) {
      emit(CalenderState(state.selectedDay, state.slot, state.bookedservices,
          event.bookedslots));
    });
  }
}
