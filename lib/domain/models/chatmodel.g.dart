// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      json['message'] as String,
      json['date'] as String,
      json['time'] as String,
      json['userid'] as String?,
      json['isAdmin'] as bool?,
    );

Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
      'message': instance.message,
      'date': instance.date,
      'time': instance.time,
      'userid': instance.uid,
      'isAdmin': instance.isAdmin,
    };
