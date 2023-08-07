import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/product/productmodel.dart';
import 'package:project2/domain/models/service/servicemodel.dart';
import 'package:project2/domain/repos/isearchrepo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepo searchrepo;
  SearchBloc(this.searchrepo) : super(SearchState.initial()) {
    log('$state');
    on<_serviceSearchEvent>((event, emit) async {
      Either<MainFailures, List<ServiceModel>> servicelist =
          await searchrepo.searvicesearch(event.query);
      emit(
        servicelist.fold(
          (l) => const SearchNotFoundState(),
          (r) => r.isEmpty
              ? const SearchNotFoundState()
              : SearchServiceState(servicelist: r),
        ),
      );
    });
    on<ProductSearcEvent>((event, emit) async {
      Either<MainFailures, List<ProductModel>> productlsit =
          await searchrepo.productsearch(event.query);

      emit(
        productlsit.fold(
          (l) => const SearchNotFoundState(),
          (r) => r.isEmpty
              ? const SearchNotFoundState()
              : SearchState.productSearchState(productlist: r),
        ),
      );
    });
  }
}
