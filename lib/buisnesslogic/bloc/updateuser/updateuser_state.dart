part of 'updateuser_bloc.dart';

class UpdateuserState {
  final String name;
  final String phone;
  final String imageurl;
  final bool isLoading;
  final String? selectedimage;

  UpdateuserState(
      this.name, this.phone, this.imageurl, this.isLoading, this.selectedimage);
}

class UpdateuserInitial extends UpdateuserState {
  UpdateuserInitial(super.name, super.phone, super.imageurl, super.isLoading,
      super.selectedimage);
}
