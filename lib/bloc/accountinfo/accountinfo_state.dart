part of 'accountinfo_bloc.dart';

class AccountinfoState {
  final String name;
  final String phone;

  AccountinfoState(this.name, this.phone);
}

class AccountinfoInitial extends AccountinfoState {
  AccountinfoInitial(super.name, super.phone);
}
