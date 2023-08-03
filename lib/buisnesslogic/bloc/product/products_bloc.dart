import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project2/domain/models/product/productmodel.dart';
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial(null)) {
    on<GetAllProductsEvent>((event, emit) {
      emit(ProductsState(event.productlist));
    });
  }
}
