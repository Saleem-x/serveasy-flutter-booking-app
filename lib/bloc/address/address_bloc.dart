import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc()
      : super(const AddressInitial('Country', 'State', 'City', false)) {
    on<CountrySelectingEvent>((event, emit) {
      emit(AddressState(
          event.country, state.state, state.city, state.isLoading));
    });
    on<StateSelectingEvent>((event, emit) {
      emit(AddressState(
          state.country, event.state, state.city, state.isLoading));
    });
    on<CitySelectingEvent>((event, emit) {
      emit(AddressState(
          state.country, state.state, event.city, state.isLoading));
    });
    on<LoadingEvent>((event, emit) {
      emit(AddressState(
          state.country, state.state, state.city, event.isLoading));
    });
  }
}
