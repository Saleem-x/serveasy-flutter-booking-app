import 'package:json_annotation/json_annotation.dart';
import 'package:project2/domain/models/product/productmodel.dart';
part 'cartordersmodel.g.dart';

@JsonSerializable()
class GetCartOrdersModel {
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'products')
  final Map<String, dynamic> productslist;
  @JsonKey(name: 'status')
  final String status;
  final String refurl;
  @JsonKey(name: 'total')
  final double total;

  GetCartOrdersModel(this.date, this.id, this.productslist, this.status,
      this.refurl, this.total);
  factory GetCartOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$GetCartOrdersModelFromJson(json);
}

class ProductandCount {
  final ProductModel product;
  final dynamic count;

  ProductandCount(this.product, this.count);
}

class CartOrderModel {
  final String date;
  final int id;
  final List<ProductandCount> productslist;
  final String status;
  final String refurl;
  final double total;

  CartOrderModel(this.date, this.id, this.productslist, this.status,
      this.refurl, this.total);
}

class CartItemmodel {
  final ProductModel product;
  int itemcount;
  final int time;
  final String availability;
  final int id;

  CartItemmodel(
      this.product, this.itemcount, this.time, this.availability, this.id);
}



/* 
date
"Timestamp(seconds=1691148327, nanoseconds=350000000)"
(string)
id
1691148327350349
products
1690096728839
3
1690096738465
2
status
"delivered"
total
23912 */