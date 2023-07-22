import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project2/models/cartitemmodel.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial(null, 1)) {
    on<GetAllCartItemsEvent>((event, emit) {
      emit(CartState(event.cartitems, state.count));
    });
    on<IncrementProductCountEvent>((event, emit) {
      emit(CartState(state.cartitems, event.count + 1));
    });
    on<DecrementProductCountEvent>((event, emit) {
      emit(CartState(state.cartitems, event.count - 1));
    });
  }
}
