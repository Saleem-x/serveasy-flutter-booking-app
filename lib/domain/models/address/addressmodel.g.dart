// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addressmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      json['address'] as String,
      json['country'] as String,
      json['state'] as String,
      json['city'] as String,
      json['zipcode'] as String,
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'zipcode': instance.zipcode,
    };
