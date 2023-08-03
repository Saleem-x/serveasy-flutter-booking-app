part of 'address_bloc.dart';

@immutable
abstract class AddressEvent {}

class CountrySelectingEvent extends AddressEvent {
  final String country;

  CountrySelectingEvent(this.country);
}

class StateSelectingEvent extends AddressEvent {
  final String state;

  StateSelectingEvent(this.state);
}

class CitySelectingEvent extends AddressEvent {
  final String city;

  CitySelectingEvent(this.city);
}

class LoadingEvent extends AddressEvent {
  final bool isLoading;

  LoadingEvent(this.isLoading);
}
