part of 'orderlist_bloc.dart';

@immutable
abstract class OrderlistEvent {}

class GetAllOrdersEvent extends OrderlistEvent {
  final List<ProductOrdermodel>? orderslist;

  GetAllOrdersEvent(this.orderslist);
}
