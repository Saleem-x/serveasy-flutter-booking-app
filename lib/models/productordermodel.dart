import 'package:project2/models/productmodel.dart';

class ProductOrdermodel {
  final ProductModel product;
  final int itemcount;
  final String address;
  final String paymentmethod;
  final int date;
  final String status;

  ProductOrdermodel(
    this.product,
    this.itemcount,
    this.address,
    this.paymentmethod,
    this.date,
    this.status,
  );
}
