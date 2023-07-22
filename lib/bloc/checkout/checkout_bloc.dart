import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc()
      : super(
            CheckoutInitial('Select Address', 'Select payment method', false)) {
    on<AddressSelectionEvent>((event, emit) {
      emit(CheckoutState(event.address, state.paymentmethod, state.isLoading));
    });
    on<PaymentselctionEvent>((event, emit) {
      emit(CheckoutState(state.address, event.paymentmethod, state.isLoading));
    });
    on<LoadingEvent>((event, emit) {
      emit(CheckoutState(state.address, state.paymentmethod, event.isLoading));
    });
  }
}
