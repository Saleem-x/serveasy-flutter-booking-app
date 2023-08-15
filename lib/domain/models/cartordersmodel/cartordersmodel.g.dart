// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartordersmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartOrdersModel _$GetCartOrdersModelFromJson(Map<String, dynamic> json) =>
    GetCartOrdersModel(
      json['date'] as String,
      json['id'] as int,
      json['products'] as Map<String, dynamic>,
      json['status'] as String,
      json['refurl'] as String,
      (json['total'] as num).toDouble(),
    );

// Map<String, dynamic> _$GetCartOrdersModelToJson(GetCartOrdersModel instance) =>
//     <String, dynamic>{
//       'date': instance.date,
//       'id': instance.id,
//       'products': instance.productslist,
//       'status': instance.status,
//       'refurl': instance.refurl,
//       'total': instance.total,
//     };
