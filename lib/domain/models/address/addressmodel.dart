import 'package:json_annotation/json_annotation.dart';

part 'addressmodel.g.dart';

@JsonSerializable()
class AddressModel {
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'state')
  final String state;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'zipcode')
  final String zipcode;

  AddressModel(this.address, this.country, this.state, this.city, this.zipcode);

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}

/* address
"naseem"
(string)
city
"Palakkad district"
country
"🇮🇳 India"
id
1690368568690
state
"Kerala"
zipcode
"679303" */