import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project2/domain/models/productordermodel.dart';

part 'orderlist_event.dart';
part 'orderlist_state.dart';

class OrderlistBloc extends Bloc<OrderlistEvent, OrderlistState> {
  OrderlistBloc() : super(OrderlistInitial(null)) {
    on<GetAllOrdersEvent>((event, emit) {
      emit(OrderlistState(event.orderslist));
    });
  }
}
