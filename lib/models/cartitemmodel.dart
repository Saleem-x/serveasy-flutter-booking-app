import 'package:project2/models/productmodel.dart';

class CartItemmodel {
  final ProductModel product;
  int itemcount;
  final int time;
  final String availability;
  final int id;

  CartItemmodel(
      this.product, this.itemcount, this.time, this.availability, this.id);
}
