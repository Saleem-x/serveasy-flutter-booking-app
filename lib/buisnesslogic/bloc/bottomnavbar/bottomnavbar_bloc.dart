import 'package:bloc/bloc.dart';
part 'bottomnavbar_event.dart';
part 'bottomnavbar_state.dart';

class BottomnavbarBloc extends Bloc<BottomnavbarEvent, BottomnavbarState> {
  BottomnavbarBloc() : super(BottomnavbarInitial(0)) {
    on<Changepage>((event, emit) {
      return emit(BottomnavbarState(event.index));
    });
  }
}
