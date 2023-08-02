import 'package:json_annotation/json_annotation.dart';
part 'servicemodel.g.dart';

@JsonSerializable()
class ServiceModel {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'price')
  final double price;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @JsonKey(name: 'id')
  final String id;

  ServiceModel(
    this.id, {
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceModelToJson(this);
}
