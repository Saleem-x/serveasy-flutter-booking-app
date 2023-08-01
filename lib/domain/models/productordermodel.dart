import 'package:project2/domain/models/productmodel.dart';

class ProductOrdermodel {
  final ProductModel product;
  final int productid;
  final int itemcount;
  final String address;
  final String paymentmethod;
  final int date;
  final String status;
  final num total;

  ProductOrdermodel(
    this.productid,
    this.itemcount,
    this.address,
    this.paymentmethod,
    this.date,
    this.status,
    this.total,
    this.product,
  );
}
