import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'updateuser_event.dart';
part 'updateuser_state.dart';

class UpdateuserBloc extends Bloc<UpdateuserEvent, UpdateuserState> {
  UpdateuserBloc()
      : super(UpdateuserInitial('Username', 'phone', 'no-img', false, null)) {
    on<GetUserDetailsEvent>((event, emit) {
      emit(UpdateuserState(event.name, event.phone, event.imageurl,
          state.isLoading, state.selectedimage));
    });
    on<LoadingEvent>((event, emit) {
      emit(UpdateuserState(state.name, state.phone, state.imageurl,
          event.isLoading, state.selectedimage));
    });
    on<ImageSelectEvent>((event, emit) {
      emit(UpdateuserState(state.name, state.phone, state.imageurl,
          state.isLoading, event.selectedimageurl));
    });
  }
}
