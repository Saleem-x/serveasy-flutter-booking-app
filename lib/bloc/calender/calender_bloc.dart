import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calender_event.dart';
part 'calender_state.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  CalenderBloc() : super(CalenderInitial(DateTime.now())) {
    on<DaySelectingEvent>((event, emit) {
      emit(CalenderState(event.selectedDay));
    });
  }
}
