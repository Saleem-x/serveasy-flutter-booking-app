import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project2/functions/address.dart';
import 'package:project2/domain/models/address/addressmodel.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc()
      : super(CheckoutInitial(null, 'Select payment method', false, [])) {
    on<AddressSelectionEvent>((event, emit) {
      emit(CheckoutState(event.address, state.paymentmethod, state.isLoading,
          state.addresslist));
    });
    on<PaymentselctionEvent>((event, emit) {
      emit(CheckoutState(state.address, event.paymentmethod, state.isLoading,
          state.addresslist));
    });
    on<LoadingEvent>((event, emit) {
      emit(CheckoutState(state.address, state.paymentmethod, event.isLoading,
          state.addresslist));
    });
    on<GetAddressEvent>((event, emit) async {
      final List<AddressModel> addresslist = await getAddressllist();
      emit(CheckoutState(
          state.address, state.paymentmethod, state.isLoading, addresslist));
    });
  }
}
