// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      json['username'] as String,
      json['review'] as String,
      json['starrating'] as int,
      json['date'] as String,
      json['imageurl'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'imageurl': instance.imageurl,
      'review': instance.review,
      'starrating': instance.starrating,
      'date': instance.date,
    };
