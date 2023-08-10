part of 'cartorders_bloc.dart';

@freezed
class CartordersState with _$CartordersState {
  const factory CartordersState({required List<CartOrderModel>? cartorders}) =
      _CartordersState;
  factory CartordersState.initial() => const CartordersState(cartorders: null);
}
