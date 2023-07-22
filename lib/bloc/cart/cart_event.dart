part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class GetAllCartItemsEvent extends CartEvent {
  final List<CartItemmodel>? cartitems;

  GetAllCartItemsEvent(this.cartitems);
}

class IncrementProductCountEvent extends CartEvent {
  final int count;

  IncrementProductCountEvent(this.count);
}

class DecrementProductCountEvent extends CartEvent {
  final int count;

  DecrementProductCountEvent(this.count);
}
