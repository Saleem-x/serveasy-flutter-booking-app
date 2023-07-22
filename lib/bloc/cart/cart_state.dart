part of 'cart_bloc.dart';

class CartState {
  final List<CartItemmodel>? cartitems;
  final int count;
  CartState(this.cartitems, this.count);
}

class CartInitial extends CartState {
  CartInitial(super.cartitems, super.count);
}
