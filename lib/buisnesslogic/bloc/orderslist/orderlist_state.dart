part of 'orderlist_bloc.dart';

class OrderlistState {
  final List<ProductOrdermodel>? orderslist;

  OrderlistState(this.orderslist);
}

class OrderlistInitial extends OrderlistState {
  OrderlistInitial(super.orderslist);
}
