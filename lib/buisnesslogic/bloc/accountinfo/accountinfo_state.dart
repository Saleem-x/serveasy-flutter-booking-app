part of 'accountinfo_bloc.dart';

class AccountinfoState {
  final String name;
  final String phone;
  final String imageurl;

  AccountinfoState(this.name, this.phone, this.imageurl);
}

class AccountinfoInitial extends AccountinfoState {
  AccountinfoInitial(super.name, super.phone, super.imageurl);
}
