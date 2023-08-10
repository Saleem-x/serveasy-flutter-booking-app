import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/models/cartordersmodel/cartordersmodel.dart';
import 'package:project2/domain/repos/icartordersrepo.dart';

part 'cartorders_event.dart';
part 'cartorders_state.dart';
part 'cartorders_bloc.freezed.dart';

@injectable
class CartordersBloc extends Bloc<CartordersEvent, CartordersState> {
  final ICartOrdersRepo cartordersrepo;
  CartordersBloc(this.cartordersrepo) : super(CartordersState.initial()) {
    on<CartordersEvent>((event, emit) {});
  }
}
