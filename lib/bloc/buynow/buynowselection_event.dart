part of 'buynowselection_bloc.dart';

@immutable
abstract class BuynowselectionEvent {}

class AddressSelectionEvent extends BuynowselectionEvent {
  final String address;
  AddressSelectionEvent(this.address);
}

class PaymentselctionEvent extends BuynowselectionEvent {
  final String paymentmethod;
  PaymentselctionEvent(this.paymentmethod);
}

class ItemCountIncriment extends BuynowselectionEvent {
  final int count;

  ItemCountIncriment(this.count);
}

class ItemCountDecriment extends BuynowselectionEvent {
  final int count;

  ItemCountDecriment(this.count);
}

class LoadingEvent extends BuynowselectionEvent {
  final bool isLoading;

  LoadingEvent(this.isLoading);
}
