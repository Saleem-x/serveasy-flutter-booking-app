part of 'servicebooknow_bloc.dart';

class ServicebooknowState {
  final String address;
  final bool isLoading;
  ServicebooknowState(this.address, this.isLoading);
}

class ServicebooknowInitial extends ServicebooknowState {
  ServicebooknowInitial(super.address, super.isLoading);
}
