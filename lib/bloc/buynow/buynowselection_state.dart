part of 'buynowselection_bloc.dart';

class BuynowselectionState {
  final String address;
  final String paymentmethod;
  final int count;
  final bool isLoading;
  BuynowselectionState(
      this.address, this.paymentmethod, this.count, this.isLoading);
}

class BuynowselectionInitial extends BuynowselectionState {
  BuynowselectionInitial(
      super.address, super.paymentmethod, super.count, super.isLoading);
}
