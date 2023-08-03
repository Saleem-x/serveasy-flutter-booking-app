import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project2/domain/models/address/addressmodel.dart';

part 'servicebooknow_event.dart';
part 'servicebooknow_state.dart';

class ServicebooknowBloc
    extends Bloc<ServicebooknowEvent, ServicebooknowState> {
  ServicebooknowBloc() : super(ServicebooknowInitial(null, false, null)) {
    on<AddressSelectionEvent>((event, emit) {
      emit(ServicebooknowState(
          event.address, state.isLoading, state.addresslist));
    });
    on<BoookNowLoadingEvent>((event, emit) {
      emit(ServicebooknowState(
          state.address, event.isLoading, state.addresslist));
    });
    on<GetAddressEvent>((event, emit) {
      emit(ServicebooknowState(
          state.address, state.isLoading, event.addresslist));
    });
  }
}
