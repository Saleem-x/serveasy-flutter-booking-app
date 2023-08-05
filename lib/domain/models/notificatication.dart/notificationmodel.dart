import 'package:json_annotation/json_annotation.dart';
part 'notificationmodel.g.dart';

@JsonSerializable()
class NotificationModel {
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'imageurl')
  final String? imageurl;
  @JsonKey(name: 'date')
  final String date;

  NotificationModel(this.title, this.content, this.imageurl, this.date);

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
