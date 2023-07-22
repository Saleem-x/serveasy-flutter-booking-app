part of 'checkout_bloc.dart';

@immutable
abstract class CheckoutEvent {}

class AddressSelectionEvent extends CheckoutEvent {
  final String address;
  AddressSelectionEvent(this.address);
}

class PaymentselctionEvent extends CheckoutEvent {
  final String paymentmethod;
  PaymentselctionEvent(this.paymentmethod);
}

class LoadingEvent extends CheckoutEvent {
  final bool isLoading;

  LoadingEvent(this.isLoading);
}
