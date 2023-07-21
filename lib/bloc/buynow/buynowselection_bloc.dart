import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buynowselection_event.dart';
part 'buynowselection_state.dart';

class BuynowselectionBloc
    extends Bloc<BuynowselectionEvent, BuynowselectionState> {
  BuynowselectionBloc()
      : super(BuynowselectionInitial(
            'select Adress', 'Select PAyment Method', 1, false)) {
    on<AddressSelectionEvent>((event, emit) {
      emit(BuynowselectionState(
          event.address, state.paymentmethod, state.count, state.isLoading));
    });

    on<PaymentselctionEvent>((event, emit) {
      emit(BuynowselectionState(
          state.address, event.paymentmethod, state.count, state.isLoading));
    });
    on<ItemCountIncriment>((event, emit) {
      emit(BuynowselectionState(state.address, state.paymentmethod,
          event.count + 1, state.isLoading));
    });
    on<ItemCountDecriment>((event, emit) {
      emit(BuynowselectionState(state.address, state.paymentmethod,
          event.count > 0 ? event.count - 1 : 0, state.isLoading));
    });
    on<LoadingEvent>((event, emit) {
      emit(BuynowselectionState(
          state.address, state.paymentmethod, state.count, event.isLoading));
    });
  }
}
