import 'package:freezed_annotation/freezed_annotation.dart';
part 'reviewmodel.g.dart';

@JsonSerializable()
class ReviewModel {
  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'imageurl')
  final String imageurl;
  @JsonKey(name: 'review')
  final String review;
  @JsonKey(name: 'starrating')
  final int starrating;
  @JsonKey(name: 'date')
  final String date;
  ReviewModel(
      this.username, this.review, this.starrating, this.date, this.imageurl);

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);
}
