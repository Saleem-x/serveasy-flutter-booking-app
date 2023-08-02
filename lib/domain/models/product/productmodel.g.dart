// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['name'] as String,
      (json['price'] as num).toDouble(),
      json['description'] as String,
      json['imageurl'] as String,
      json['id'] as String,
      json['stock'] as int,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'imageurl': instance.imageUrl,
      'id': instance.id,
      'stock': instance.stock,
    };
