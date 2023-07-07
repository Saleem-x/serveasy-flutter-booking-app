import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'loginscreen_event.dart';
part 'loginscreen_state.dart';

class LoginscreenBloc extends Bloc<LoginscreenEvent, LoginscreenState> {
  LoginscreenBloc() : super(LoginscreenInitial(false)) {
    on<Loadingevent>((event, emit) {
      emit(LoginscreenState(event.isloading));
    });
  }
}
