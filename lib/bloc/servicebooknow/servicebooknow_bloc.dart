import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'servicebooknow_event.dart';
part 'servicebooknow_state.dart';

class ServicebooknowBloc
    extends Bloc<ServicebooknowEvent, ServicebooknowState> {
  ServicebooknowBloc() : super(ServicebooknowInitial('Select Address', false)) {
    on<AddressSelectionEvent>((event, emit) {
      emit(ServicebooknowState(event.address, state.isLoading));
    });
    on<LoadingEvent>((event, emit) {
      emit(ServicebooknowState(state.address, event.isLoading));
    });
  }
}
