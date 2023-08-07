part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.serviceSearchEvent({required String query}) =
      _serviceSearchEvent;
  const factory SearchEvent.productSearcEvent({required String query}) =
      ProductSearcEvent;
}
