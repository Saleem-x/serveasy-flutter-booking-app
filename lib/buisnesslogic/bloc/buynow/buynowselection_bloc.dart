import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project2/domain/models/address/addressmodel.dart';

part 'buynowselection_event.dart';
part 'buynowselection_state.dart';

class BuynowselectionBloc
    extends Bloc<BuynowselectionEvent, BuynowselectionState> {
  BuynowselectionBloc()
      : super(BuynowselectionInitial(
            null, 'Select PAyment Method', 1, false, null)) {
    on<AddressSelectionEvent>((event, emit) {
      emit(BuynowselectionState(event.address, state.paymentmethod, state.count,
          state.isLoading, state.addresslist));
    });

    on<PaymentselctionEvent>((event, emit) {
      emit(BuynowselectionState(state.address, event.paymentmethod, state.count,
          state.isLoading, state.addresslist));
    });
    on<ItemCountIncriment>((event, emit) {
      emit(BuynowselectionState(state.address, state.paymentmethod,
          event.count + 1, state.isLoading, state.addresslist));
    });
    on<ItemCountDecriment>((event, emit) {
      emit(BuynowselectionState(
          state.address,
          state.paymentmethod,
          event.count > 0 ? event.count - 1 : 0,
          state.isLoading,
          state.addresslist));
    });
    on<BuyNowLoadingEvent>((event, emit) {
      emit(BuynowselectionState(state.address, state.paymentmethod, state.count,
          event.isLoading, state.addresslist));
    });
    on<GetAddressEvent>((event, emit) {
      emit(BuynowselectionState(state.address, state.paymentmethod, state.count,
          state.isLoading, event.addresslist));
    });
  }
}
