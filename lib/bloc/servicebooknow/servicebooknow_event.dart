part of 'servicebooknow_bloc.dart';

@immutable
abstract class ServicebooknowEvent {}

class AddressSelectionEvent extends ServicebooknowEvent {
  final AddressModel address;
  AddressSelectionEvent(this.address);
}

class LoadingEvent extends ServicebooknowEvent {
  final bool isLoading;

  LoadingEvent(this.isLoading);
}

class GetAddressEvent extends ServicebooknowEvent {
  final List<AddressModel> addresslist;

  GetAddressEvent(this.addresslist);
}
