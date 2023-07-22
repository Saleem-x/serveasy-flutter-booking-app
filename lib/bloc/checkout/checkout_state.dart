part of 'checkout_bloc.dart';

class CheckoutState {
  final String address;
  final String paymentmethod;
  final bool isLoading;

  CheckoutState(this.address, this.paymentmethod, this.isLoading);
}

class CheckoutInitial extends CheckoutState {
  CheckoutInitial(super.address, super.paymentmethod, super.isLoading);
}
