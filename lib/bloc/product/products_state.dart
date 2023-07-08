part of 'products_bloc.dart';

class ProductsState {
  final List<ProductModel> productlist;

  ProductsState(this.productlist);
}

class ProductsInitial extends ProductsState {
  ProductsInitial(super.productlist);
}
