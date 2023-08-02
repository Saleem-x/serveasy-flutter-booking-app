import 'package:json_annotation/json_annotation.dart';
part 'chatmodel.g.dart';

@JsonSerializable()
class ChatModel {
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'time')
  final String time;
  @JsonKey(name: 'userid')
  final String? uid;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  ChatModel(
    this.message,
    this.date,
    this.time,
    this.uid,
    this.isAdmin,
  );
  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChatModelToJson(this);
}
