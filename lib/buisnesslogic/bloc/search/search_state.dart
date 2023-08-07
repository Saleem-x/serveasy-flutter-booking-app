part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState() = _SearchState;
  const factory SearchState.searchServiceState(
      {required List<ServiceModel> servicelist}) = SearchServiceState;
  const factory SearchState.productSearchState(
      {required List<ProductModel> productlist}) = ProductSearchState;

  const factory SearchState.searchNotFoundState() = SearchNotFoundState;

  factory SearchState.initial() => const SearchState();
}
