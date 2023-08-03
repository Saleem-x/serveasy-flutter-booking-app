part of 'address_bloc.dart';

class AddressState {
  final String? country;
  final String? state;
  final String? city;
  final bool isLoading;

  const AddressState(this.country, this.state, this.city, this.isLoading);
}

class AddressInitial extends AddressState {
  const AddressInitial(super.country, super.state, super.city, super.isLoading);
}
