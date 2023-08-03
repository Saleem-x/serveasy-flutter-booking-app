part of 'accountinfo_bloc.dart';

@immutable
abstract class AccountinfoEvent {}

class GetUserDetailsEvent extends AccountinfoEvent {
  final String name;
  final String phone;
  final String imageurl;

  GetUserDetailsEvent(this.name, this.phone, this.imageurl);
}
