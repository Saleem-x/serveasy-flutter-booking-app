part of 'servicebooknow_bloc.dart';

class ServicebooknowState {
  final AddressModel? address;
  final bool isLoading;
  final List<AddressModel>? addresslist;
  ServicebooknowState(this.address, this.isLoading, this.addresslist);
}

class ServicebooknowInitial extends ServicebooknowState {
  ServicebooknowInitial(super.address, super.isLoading, super.addresslist);
}
