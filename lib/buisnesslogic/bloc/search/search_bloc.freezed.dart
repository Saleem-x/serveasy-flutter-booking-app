// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) serviceSearchEvent,
    required TResult Function(String query) productSearcEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? serviceSearchEvent,
    TResult? Function(String query)? productSearcEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? serviceSearchEvent,
    TResult Function(String query)? productSearcEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serviceSearchEvent value) serviceSearchEvent,
    required TResult Function(ProductSearcEvent value) productSearcEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_serviceSearchEvent value)? serviceSearchEvent,
    TResult? Function(ProductSearcEvent value)? productSearcEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serviceSearchEvent value)? serviceSearchEvent,
    TResult Function(ProductSearcEvent value)? productSearcEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_serviceSearchEventCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$_serviceSearchEventCopyWith(_$_serviceSearchEvent value,
          $Res Function(_$_serviceSearchEvent) then) =
      __$$_serviceSearchEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_serviceSearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_serviceSearchEvent>
    implements _$$_serviceSearchEventCopyWith<$Res> {
  __$$_serviceSearchEventCopyWithImpl(
      _$_serviceSearchEvent _value, $Res Function(_$_serviceSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_serviceSearchEvent(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_serviceSearchEvent implements _serviceSearchEvent {
  const _$_serviceSearchEvent({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.serviceSearchEvent(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_serviceSearchEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_serviceSearchEventCopyWith<_$_serviceSearchEvent> get copyWith =>
      __$$_serviceSearchEventCopyWithImpl<_$_serviceSearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) serviceSearchEvent,
    required TResult Function(String query) productSearcEvent,
  }) {
    return serviceSearchEvent(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? serviceSearchEvent,
    TResult? Function(String query)? productSearcEvent,
  }) {
    return serviceSearchEvent?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? serviceSearchEvent,
    TResult Function(String query)? productSearcEvent,
    required TResult orElse(),
  }) {
    if (serviceSearchEvent != null) {
      return serviceSearchEvent(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serviceSearchEvent value) serviceSearchEvent,
    required TResult Function(ProductSearcEvent value) productSearcEvent,
  }) {
    return serviceSearchEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_serviceSearchEvent value)? serviceSearchEvent,
    TResult? Function(ProductSearcEvent value)? productSearcEvent,
  }) {
    return serviceSearchEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serviceSearchEvent value)? serviceSearchEvent,
    TResult Function(ProductSearcEvent value)? productSearcEvent,
    required TResult orElse(),
  }) {
    if (serviceSearchEvent != null) {
      return serviceSearchEvent(this);
    }
    return orElse();
  }
}

abstract class _serviceSearchEvent implements SearchEvent {
  const factory _serviceSearchEvent({required final String query}) =
      _$_serviceSearchEvent;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_serviceSearchEventCopyWith<_$_serviceSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductSearcEventCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$ProductSearcEventCopyWith(
          _$ProductSearcEvent value, $Res Function(_$ProductSearcEvent) then) =
      __$$ProductSearcEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ProductSearcEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ProductSearcEvent>
    implements _$$ProductSearcEventCopyWith<$Res> {
  __$$ProductSearcEventCopyWithImpl(
      _$ProductSearcEvent _value, $Res Function(_$ProductSearcEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ProductSearcEvent(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductSearcEvent implements ProductSearcEvent {
  const _$ProductSearcEvent({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.productSearcEvent(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearcEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearcEventCopyWith<_$ProductSearcEvent> get copyWith =>
      __$$ProductSearcEventCopyWithImpl<_$ProductSearcEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) serviceSearchEvent,
    required TResult Function(String query) productSearcEvent,
  }) {
    return productSearcEvent(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? serviceSearchEvent,
    TResult? Function(String query)? productSearcEvent,
  }) {
    return productSearcEvent?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? serviceSearchEvent,
    TResult Function(String query)? productSearcEvent,
    required TResult orElse(),
  }) {
    if (productSearcEvent != null) {
      return productSearcEvent(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serviceSearchEvent value) serviceSearchEvent,
    required TResult Function(ProductSearcEvent value) productSearcEvent,
  }) {
    return productSearcEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_serviceSearchEvent value)? serviceSearchEvent,
    TResult? Function(ProductSearcEvent value)? productSearcEvent,
  }) {
    return productSearcEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serviceSearchEvent value)? serviceSearchEvent,
    TResult Function(ProductSearcEvent value)? productSearcEvent,
    required TResult orElse(),
  }) {
    if (productSearcEvent != null) {
      return productSearcEvent(this);
    }
    return orElse();
  }
}

abstract class ProductSearcEvent implements SearchEvent {
  const factory ProductSearcEvent({required final String query}) =
      _$ProductSearcEvent;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$ProductSearcEventCopyWith<_$ProductSearcEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<ServiceModel> servicelist)
        searchServiceState,
    required TResult Function(List<ProductModel> productlist)
        productSearchState,
    required TResult Function() searchNotFoundState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult? Function(List<ProductModel> productlist)? productSearchState,
    TResult? Function()? searchNotFoundState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult Function(List<ProductModel> productlist)? productSearchState,
    TResult Function()? searchNotFoundState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchState value) $default, {
    required TResult Function(SearchServiceState value) searchServiceState,
    required TResult Function(ProductSearchState value) productSearchState,
    required TResult Function(SearchNotFoundState value) searchNotFoundState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchState value)? $default, {
    TResult? Function(SearchServiceState value)? searchServiceState,
    TResult? Function(ProductSearchState value)? productSearchState,
    TResult? Function(SearchNotFoundState value)? searchNotFoundState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchState value)? $default, {
    TResult Function(SearchServiceState value)? searchServiceState,
    TResult Function(ProductSearchState value)? productSearchState,
    TResult Function(SearchNotFoundState value)? searchNotFoundState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState();

  @override
  String toString() {
    return 'SearchState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<ServiceModel> servicelist)
        searchServiceState,
    required TResult Function(List<ProductModel> productlist)
        productSearchState,
    required TResult Function() searchNotFoundState,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult? Function(List<ProductModel> productlist)? productSearchState,
    TResult? Function()? searchNotFoundState,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult Function(List<ProductModel> productlist)? productSearchState,
    TResult Function()? searchNotFoundState,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchState value) $default, {
    required TResult Function(SearchServiceState value) searchServiceState,
    required TResult Function(ProductSearchState value) productSearchState,
    required TResult Function(SearchNotFoundState value) searchNotFoundState,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchState value)? $default, {
    TResult? Function(SearchServiceState value)? searchServiceState,
    TResult? Function(ProductSearchState value)? productSearchState,
    TResult? Function(SearchNotFoundState value)? searchNotFoundState,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchState value)? $default, {
    TResult Function(SearchServiceState value)? searchServiceState,
    TResult Function(ProductSearchState value)? productSearchState,
    TResult Function(SearchNotFoundState value)? searchNotFoundState,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SearchState implements SearchState {
  const factory _SearchState() = _$_SearchState;
}

/// @nodoc
abstract class _$$SearchServiceStateCopyWith<$Res> {
  factory _$$SearchServiceStateCopyWith(_$SearchServiceState value,
          $Res Function(_$SearchServiceState) then) =
      __$$SearchServiceStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ServiceModel> servicelist});
}

/// @nodoc
class __$$SearchServiceStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchServiceState>
    implements _$$SearchServiceStateCopyWith<$Res> {
  __$$SearchServiceStateCopyWithImpl(
      _$SearchServiceState _value, $Res Function(_$SearchServiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicelist = null,
  }) {
    return _then(_$SearchServiceState(
      servicelist: null == servicelist
          ? _value._servicelist
          : servicelist // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc

class _$SearchServiceState implements SearchServiceState {
  const _$SearchServiceState({required final List<ServiceModel> servicelist})
      : _servicelist = servicelist;

  final List<ServiceModel> _servicelist;
  @override
  List<ServiceModel> get servicelist {
    if (_servicelist is EqualUnmodifiableListView) return _servicelist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servicelist);
  }

  @override
  String toString() {
    return 'SearchState.searchServiceState(servicelist: $servicelist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchServiceState &&
            const DeepCollectionEquality()
                .equals(other._servicelist, _servicelist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_servicelist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchServiceStateCopyWith<_$SearchServiceState> get copyWith =>
      __$$SearchServiceStateCopyWithImpl<_$SearchServiceState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<ServiceModel> servicelist)
        searchServiceState,
    required TResult Function(List<ProductModel> productlist)
        productSearchState,
    required TResult Function() searchNotFoundState,
  }) {
    return searchServiceState(servicelist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult? Function(List<ProductModel> productlist)? productSearchState,
    TResult? Function()? searchNotFoundState,
  }) {
    return searchServiceState?.call(servicelist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult Function(List<ProductModel> productlist)? productSearchState,
    TResult Function()? searchNotFoundState,
    required TResult orElse(),
  }) {
    if (searchServiceState != null) {
      return searchServiceState(servicelist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchState value) $default, {
    required TResult Function(SearchServiceState value) searchServiceState,
    required TResult Function(ProductSearchState value) productSearchState,
    required TResult Function(SearchNotFoundState value) searchNotFoundState,
  }) {
    return searchServiceState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchState value)? $default, {
    TResult? Function(SearchServiceState value)? searchServiceState,
    TResult? Function(ProductSearchState value)? productSearchState,
    TResult? Function(SearchNotFoundState value)? searchNotFoundState,
  }) {
    return searchServiceState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchState value)? $default, {
    TResult Function(SearchServiceState value)? searchServiceState,
    TResult Function(ProductSearchState value)? productSearchState,
    TResult Function(SearchNotFoundState value)? searchNotFoundState,
    required TResult orElse(),
  }) {
    if (searchServiceState != null) {
      return searchServiceState(this);
    }
    return orElse();
  }
}

abstract class SearchServiceState implements SearchState {
  const factory SearchServiceState(
      {required final List<ServiceModel> servicelist}) = _$SearchServiceState;

  List<ServiceModel> get servicelist;
  @JsonKey(ignore: true)
  _$$SearchServiceStateCopyWith<_$SearchServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductSearchStateCopyWith<$Res> {
  factory _$$ProductSearchStateCopyWith(_$ProductSearchState value,
          $Res Function(_$ProductSearchState) then) =
      __$$ProductSearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productlist});
}

/// @nodoc
class __$$ProductSearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ProductSearchState>
    implements _$$ProductSearchStateCopyWith<$Res> {
  __$$ProductSearchStateCopyWithImpl(
      _$ProductSearchState _value, $Res Function(_$ProductSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productlist = null,
  }) {
    return _then(_$ProductSearchState(
      productlist: null == productlist
          ? _value._productlist
          : productlist // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$ProductSearchState implements ProductSearchState {
  const _$ProductSearchState({required final List<ProductModel> productlist})
      : _productlist = productlist;

  final List<ProductModel> _productlist;
  @override
  List<ProductModel> get productlist {
    if (_productlist is EqualUnmodifiableListView) return _productlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productlist);
  }

  @override
  String toString() {
    return 'SearchState.productSearchState(productlist: $productlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchState &&
            const DeepCollectionEquality()
                .equals(other._productlist, _productlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchStateCopyWith<_$ProductSearchState> get copyWith =>
      __$$ProductSearchStateCopyWithImpl<_$ProductSearchState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<ServiceModel> servicelist)
        searchServiceState,
    required TResult Function(List<ProductModel> productlist)
        productSearchState,
    required TResult Function() searchNotFoundState,
  }) {
    return productSearchState(productlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult? Function(List<ProductModel> productlist)? productSearchState,
    TResult? Function()? searchNotFoundState,
  }) {
    return productSearchState?.call(productlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult Function(List<ProductModel> productlist)? productSearchState,
    TResult Function()? searchNotFoundState,
    required TResult orElse(),
  }) {
    if (productSearchState != null) {
      return productSearchState(productlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchState value) $default, {
    required TResult Function(SearchServiceState value) searchServiceState,
    required TResult Function(ProductSearchState value) productSearchState,
    required TResult Function(SearchNotFoundState value) searchNotFoundState,
  }) {
    return productSearchState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchState value)? $default, {
    TResult? Function(SearchServiceState value)? searchServiceState,
    TResult? Function(ProductSearchState value)? productSearchState,
    TResult? Function(SearchNotFoundState value)? searchNotFoundState,
  }) {
    return productSearchState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchState value)? $default, {
    TResult Function(SearchServiceState value)? searchServiceState,
    TResult Function(ProductSearchState value)? productSearchState,
    TResult Function(SearchNotFoundState value)? searchNotFoundState,
    required TResult orElse(),
  }) {
    if (productSearchState != null) {
      return productSearchState(this);
    }
    return orElse();
  }
}

abstract class ProductSearchState implements SearchState {
  const factory ProductSearchState(
      {required final List<ProductModel> productlist}) = _$ProductSearchState;

  List<ProductModel> get productlist;
  @JsonKey(ignore: true)
  _$$ProductSearchStateCopyWith<_$ProductSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchNotFoundStateCopyWith<$Res> {
  factory _$$SearchNotFoundStateCopyWith(_$SearchNotFoundState value,
          $Res Function(_$SearchNotFoundState) then) =
      __$$SearchNotFoundStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchNotFoundStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchNotFoundState>
    implements _$$SearchNotFoundStateCopyWith<$Res> {
  __$$SearchNotFoundStateCopyWithImpl(
      _$SearchNotFoundState _value, $Res Function(_$SearchNotFoundState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchNotFoundState implements SearchNotFoundState {
  const _$SearchNotFoundState();

  @override
  String toString() {
    return 'SearchState.searchNotFoundState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchNotFoundState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<ServiceModel> servicelist)
        searchServiceState,
    required TResult Function(List<ProductModel> productlist)
        productSearchState,
    required TResult Function() searchNotFoundState,
  }) {
    return searchNotFoundState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult? Function(List<ProductModel> productlist)? productSearchState,
    TResult? Function()? searchNotFoundState,
  }) {
    return searchNotFoundState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<ServiceModel> servicelist)? searchServiceState,
    TResult Function(List<ProductModel> productlist)? productSearchState,
    TResult Function()? searchNotFoundState,
    required TResult orElse(),
  }) {
    if (searchNotFoundState != null) {
      return searchNotFoundState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchState value) $default, {
    required TResult Function(SearchServiceState value) searchServiceState,
    required TResult Function(ProductSearchState value) productSearchState,
    required TResult Function(SearchNotFoundState value) searchNotFoundState,
  }) {
    return searchNotFoundState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchState value)? $default, {
    TResult? Function(SearchServiceState value)? searchServiceState,
    TResult? Function(ProductSearchState value)? productSearchState,
    TResult? Function(SearchNotFoundState value)? searchNotFoundState,
  }) {
    return searchNotFoundState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchState value)? $default, {
    TResult Function(SearchServiceState value)? searchServiceState,
    TResult Function(ProductSearchState value)? productSearchState,
    TResult Function(SearchNotFoundState value)? searchNotFoundState,
    required TResult orElse(),
  }) {
    if (searchNotFoundState != null) {
      return searchNotFoundState(this);
    }
    return orElse();
  }
}

abstract class SearchNotFoundState implements SearchState {
  const factory SearchNotFoundState() = _$SearchNotFoundState;
}
