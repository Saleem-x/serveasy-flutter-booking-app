// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notificationmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      json['title'] as String,
      json['content'] as String,
      json['imageurl'] as String?,
      json['date'] as String,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'imageurl': instance.imageurl,
      'date': instance.date,
    };
