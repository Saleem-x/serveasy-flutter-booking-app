part of 'checkout_bloc.dart';

class CheckoutState {
  final AddressModel? address;
  final String paymentmethod;
  final bool isLoading;
  final List<AddressModel> addresslist;
  CheckoutState(
      this.address, this.paymentmethod, this.isLoading, this.addresslist);
}

class CheckoutInitial extends CheckoutState {
  CheckoutInitial(
      super.address, super.paymentmethod, super.isLoading, super.addresslist);
}
