part of 'products_bloc.dart';

@immutable
abstract class ProductsEvent {}

class GetAllProductsEvent extends ProductsEvent {
  final List<ProductModel> productlist;

  GetAllProductsEvent(this.productlist);
}
