part of 'buynowselection_bloc.dart';

class BuynowselectionState {
  final AddressModel? address;
  final String paymentmethod;
  final int count;
  final bool isLoading;
  final List<AddressModel>? addresslist;
  BuynowselectionState(this.address, this.paymentmethod, this.count,
      this.isLoading, this.addresslist);
}

class BuynowselectionInitial extends BuynowselectionState {
  BuynowselectionInitial(super.address, super.paymentmethod, super.count,
      super.isLoading, super.addresslist);
}
