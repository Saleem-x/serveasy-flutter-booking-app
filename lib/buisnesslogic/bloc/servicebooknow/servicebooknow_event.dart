part of 'servicebooknow_bloc.dart';

@immutable
abstract class ServicebooknowEvent {}

class AddressSelectionEvent extends ServicebooknowEvent {
  final AddressModel? address;
  AddressSelectionEvent(this.address);
}

class BoookNowLoadingEvent extends ServicebooknowEvent {
  final bool isLoading;

  BoookNowLoadingEvent(this.isLoading);
}

class GetAddressEvent extends ServicebooknowEvent {
  final List<AddressModel> addresslist;

  GetAddressEvent(this.addresslist);
}
