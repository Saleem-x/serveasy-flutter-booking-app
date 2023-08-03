part of 'updateuser_bloc.dart';

@immutable
abstract class UpdateuserEvent {}

class GetUserDetailsEvent extends UpdateuserEvent {
  final String name;
  final String phone;
  final String imageurl;

  GetUserDetailsEvent(this.name, this.phone, this.imageurl);
}

class ImageSelectEvent extends UpdateuserEvent {
  final String? selectedimageurl;

  ImageSelectEvent(this.selectedimageurl);
}

class LoadingEvent extends UpdateuserEvent {
  final bool isLoading;

  LoadingEvent(this.isLoading);
}
