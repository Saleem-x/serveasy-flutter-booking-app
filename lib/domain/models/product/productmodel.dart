import 'package:json_annotation/json_annotation.dart';
part 'productmodel.g.dart';

@JsonSerializable()
class ProductModel {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'price')
  final double price;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'imageurl')
  final String imageUrl;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'stock')
  final int stock;

  ProductModel(
    this.name,
    this.price,
    this.description,
    this.imageUrl,
    this.id,
    this.stock,
  );
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
