part of 'servicebooknow_bloc.dart';

@immutable
abstract class ServicebooknowEvent {}

class AddressSelectionEvent extends ServicebooknowEvent {
  final String address;
  AddressSelectionEvent(this.address);
}

class LoadingEvent extends ServicebooknowEvent {
  final bool isLoading;

  LoadingEvent(this.isLoading);
}
