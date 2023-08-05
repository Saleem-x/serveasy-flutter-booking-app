// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviewbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReviewModel review, int id) sendReview,
    required TResult Function() getallReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReviewModel review, int id)? sendReview,
    TResult? Function()? getallReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReviewModel review, int id)? sendReview,
    TResult Function()? getallReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReview value) sendReview,
    required TResult Function(GetallReviews value) getallReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendReview value)? sendReview,
    TResult? Function(GetallReviews value)? getallReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReview value)? sendReview,
    TResult Function(GetallReviews value)? getallReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewblocEventCopyWith<$Res> {
  factory $ReviewblocEventCopyWith(
          ReviewblocEvent value, $Res Function(ReviewblocEvent) then) =
      _$ReviewblocEventCopyWithImpl<$Res, ReviewblocEvent>;
}

/// @nodoc
class _$ReviewblocEventCopyWithImpl<$Res, $Val extends ReviewblocEvent>
    implements $ReviewblocEventCopyWith<$Res> {
  _$ReviewblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendReviewCopyWith<$Res> {
  factory _$$SendReviewCopyWith(
          _$SendReview value, $Res Function(_$SendReview) then) =
      __$$SendReviewCopyWithImpl<$Res>;
  @useResult
  $Res call({ReviewModel review, int id});
}

/// @nodoc
class __$$SendReviewCopyWithImpl<$Res>
    extends _$ReviewblocEventCopyWithImpl<$Res, _$SendReview>
    implements _$$SendReviewCopyWith<$Res> {
  __$$SendReviewCopyWithImpl(
      _$SendReview _value, $Res Function(_$SendReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = null,
    Object? id = null,
  }) {
    return _then(_$SendReview(
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewModel,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendReview implements SendReview {
  const _$SendReview({required this.review, required this.id});

  @override
  final ReviewModel review;
  @override
  final int id;

  @override
  String toString() {
    return 'ReviewblocEvent.sendReview(review: $review, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReview &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, review, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendReviewCopyWith<_$SendReview> get copyWith =>
      __$$SendReviewCopyWithImpl<_$SendReview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReviewModel review, int id) sendReview,
    required TResult Function() getallReviews,
  }) {
    return sendReview(review, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReviewModel review, int id)? sendReview,
    TResult? Function()? getallReviews,
  }) {
    return sendReview?.call(review, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReviewModel review, int id)? sendReview,
    TResult Function()? getallReviews,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview(review, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReview value) sendReview,
    required TResult Function(GetallReviews value) getallReviews,
  }) {
    return sendReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendReview value)? sendReview,
    TResult? Function(GetallReviews value)? getallReviews,
  }) {
    return sendReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReview value)? sendReview,
    TResult Function(GetallReviews value)? getallReviews,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview(this);
    }
    return orElse();
  }
}

abstract class SendReview implements ReviewblocEvent {
  const factory SendReview(
      {required final ReviewModel review,
      required final int id}) = _$SendReview;

  ReviewModel get review;
  int get id;
  @JsonKey(ignore: true)
  _$$SendReviewCopyWith<_$SendReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetallReviewsCopyWith<$Res> {
  factory _$$GetallReviewsCopyWith(
          _$GetallReviews value, $Res Function(_$GetallReviews) then) =
      __$$GetallReviewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetallReviewsCopyWithImpl<$Res>
    extends _$ReviewblocEventCopyWithImpl<$Res, _$GetallReviews>
    implements _$$GetallReviewsCopyWith<$Res> {
  __$$GetallReviewsCopyWithImpl(
      _$GetallReviews _value, $Res Function(_$GetallReviews) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetallReviews implements GetallReviews {
  const _$GetallReviews();

  @override
  String toString() {
    return 'ReviewblocEvent.getallReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetallReviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReviewModel review, int id) sendReview,
    required TResult Function() getallReviews,
  }) {
    return getallReviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReviewModel review, int id)? sendReview,
    TResult? Function()? getallReviews,
  }) {
    return getallReviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReviewModel review, int id)? sendReview,
    TResult Function()? getallReviews,
    required TResult orElse(),
  }) {
    if (getallReviews != null) {
      return getallReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReview value) sendReview,
    required TResult Function(GetallReviews value) getallReviews,
  }) {
    return getallReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendReview value)? sendReview,
    TResult? Function(GetallReviews value)? getallReviews,
  }) {
    return getallReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReview value)? sendReview,
    TResult Function(GetallReviews value)? getallReviews,
    required TResult orElse(),
  }) {
    if (getallReviews != null) {
      return getallReviews(this);
    }
    return orElse();
  }
}

abstract class GetallReviews implements ReviewblocEvent {
  const factory GetallReviews() = _$GetallReviews;
}

/// @nodoc
mixin _$ReviewblocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist) $default, {
    required TResult Function() loadingState,
    required TResult Function() successState,
    required TResult Function() failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ReviewModel>? reviewlist)? $default, {
    TResult? Function()? loadingState,
    TResult? Function()? successState,
    TResult? Function()? failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist)? $default, {
    TResult Function()? loadingState,
    TResult Function()? successState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewblocState value) $default, {
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(SuccessState value) successState,
    required TResult Function(Failedstate value) failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReviewblocState value)? $default, {
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(Failedstate value)? failedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewblocState value)? $default, {
    TResult Function(LoadingState value)? loadingState,
    TResult Function(SuccessState value)? successState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewblocStateCopyWith<$Res> {
  factory $ReviewblocStateCopyWith(
          ReviewblocState value, $Res Function(ReviewblocState) then) =
      _$ReviewblocStateCopyWithImpl<$Res, ReviewblocState>;
}

/// @nodoc
class _$ReviewblocStateCopyWithImpl<$Res, $Val extends ReviewblocState>
    implements $ReviewblocStateCopyWith<$Res> {
  _$ReviewblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReviewblocStateCopyWith<$Res> {
  factory _$$_ReviewblocStateCopyWith(
          _$_ReviewblocState value, $Res Function(_$_ReviewblocState) then) =
      __$$_ReviewblocStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewModel>? reviewlist});
}

/// @nodoc
class __$$_ReviewblocStateCopyWithImpl<$Res>
    extends _$ReviewblocStateCopyWithImpl<$Res, _$_ReviewblocState>
    implements _$$_ReviewblocStateCopyWith<$Res> {
  __$$_ReviewblocStateCopyWithImpl(
      _$_ReviewblocState _value, $Res Function(_$_ReviewblocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewlist = freezed,
  }) {
    return _then(_$_ReviewblocState(
      reviewlist: freezed == reviewlist
          ? _value._reviewlist
          : reviewlist // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
    ));
  }
}

/// @nodoc

class _$_ReviewblocState implements _ReviewblocState {
  const _$_ReviewblocState({required final List<ReviewModel>? reviewlist})
      : _reviewlist = reviewlist;

  final List<ReviewModel>? _reviewlist;
  @override
  List<ReviewModel>? get reviewlist {
    final value = _reviewlist;
    if (value == null) return null;
    if (_reviewlist is EqualUnmodifiableListView) return _reviewlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReviewblocState(reviewlist: $reviewlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewblocState &&
            const DeepCollectionEquality()
                .equals(other._reviewlist, _reviewlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviewlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewblocStateCopyWith<_$_ReviewblocState> get copyWith =>
      __$$_ReviewblocStateCopyWithImpl<_$_ReviewblocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist) $default, {
    required TResult Function() loadingState,
    required TResult Function() successState,
    required TResult Function() failedstate,
  }) {
    return $default(reviewlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ReviewModel>? reviewlist)? $default, {
    TResult? Function()? loadingState,
    TResult? Function()? successState,
    TResult? Function()? failedstate,
  }) {
    return $default?.call(reviewlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist)? $default, {
    TResult Function()? loadingState,
    TResult Function()? successState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(reviewlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewblocState value) $default, {
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(SuccessState value) successState,
    required TResult Function(Failedstate value) failedstate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReviewblocState value)? $default, {
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(Failedstate value)? failedstate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewblocState value)? $default, {
    TResult Function(LoadingState value)? loadingState,
    TResult Function(SuccessState value)? successState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ReviewblocState implements ReviewblocState {
  const factory _ReviewblocState(
      {required final List<ReviewModel>? reviewlist}) = _$_ReviewblocState;

  List<ReviewModel>? get reviewlist;
  @JsonKey(ignore: true)
  _$$_ReviewblocStateCopyWith<_$_ReviewblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$ReviewblocStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'ReviewblocState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist) $default, {
    required TResult Function() loadingState,
    required TResult Function() successState,
    required TResult Function() failedstate,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ReviewModel>? reviewlist)? $default, {
    TResult? Function()? loadingState,
    TResult? Function()? successState,
    TResult? Function()? failedstate,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist)? $default, {
    TResult Function()? loadingState,
    TResult Function()? successState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewblocState value) $default, {
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(SuccessState value) successState,
    required TResult Function(Failedstate value) failedstate,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReviewblocState value)? $default, {
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(Failedstate value)? failedstate,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewblocState value)? $default, {
    TResult Function(LoadingState value)? loadingState,
    TResult Function(SuccessState value)? successState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ReviewblocState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$SuccessStateCopyWith<$Res> {
  factory _$$SuccessStateCopyWith(
          _$SuccessState value, $Res Function(_$SuccessState) then) =
      __$$SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessStateCopyWithImpl<$Res>
    extends _$ReviewblocStateCopyWithImpl<$Res, _$SuccessState>
    implements _$$SuccessStateCopyWith<$Res> {
  __$$SuccessStateCopyWithImpl(
      _$SuccessState _value, $Res Function(_$SuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessState implements SuccessState {
  const _$SuccessState();

  @override
  String toString() {
    return 'ReviewblocState.successState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist) $default, {
    required TResult Function() loadingState,
    required TResult Function() successState,
    required TResult Function() failedstate,
  }) {
    return successState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ReviewModel>? reviewlist)? $default, {
    TResult? Function()? loadingState,
    TResult? Function()? successState,
    TResult? Function()? failedstate,
  }) {
    return successState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist)? $default, {
    TResult Function()? loadingState,
    TResult Function()? successState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewblocState value) $default, {
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(SuccessState value) successState,
    required TResult Function(Failedstate value) failedstate,
  }) {
    return successState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReviewblocState value)? $default, {
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(Failedstate value)? failedstate,
  }) {
    return successState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewblocState value)? $default, {
    TResult Function(LoadingState value)? loadingState,
    TResult Function(SuccessState value)? successState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements ReviewblocState {
  const factory SuccessState() = _$SuccessState;
}

/// @nodoc
abstract class _$$FailedstateCopyWith<$Res> {
  factory _$$FailedstateCopyWith(
          _$Failedstate value, $Res Function(_$Failedstate) then) =
      __$$FailedstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedstateCopyWithImpl<$Res>
    extends _$ReviewblocStateCopyWithImpl<$Res, _$Failedstate>
    implements _$$FailedstateCopyWith<$Res> {
  __$$FailedstateCopyWithImpl(
      _$Failedstate _value, $Res Function(_$Failedstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Failedstate implements Failedstate {
  const _$Failedstate();

  @override
  String toString() {
    return 'ReviewblocState.failedstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Failedstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist) $default, {
    required TResult Function() loadingState,
    required TResult Function() successState,
    required TResult Function() failedstate,
  }) {
    return failedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ReviewModel>? reviewlist)? $default, {
    TResult? Function()? loadingState,
    TResult? Function()? successState,
    TResult? Function()? failedstate,
  }) {
    return failedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ReviewModel>? reviewlist)? $default, {
    TResult Function()? loadingState,
    TResult Function()? successState,
    TResult Function()? failedstate,
    required TResult orElse(),
  }) {
    if (failedstate != null) {
      return failedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewblocState value) $default, {
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(SuccessState value) successState,
    required TResult Function(Failedstate value) failedstate,
  }) {
    return failedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReviewblocState value)? $default, {
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(Failedstate value)? failedstate,
  }) {
    return failedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewblocState value)? $default, {
    TResult Function(LoadingState value)? loadingState,
    TResult Function(SuccessState value)? successState,
    TResult Function(Failedstate value)? failedstate,
    required TResult orElse(),
  }) {
    if (failedstate != null) {
      return failedstate(this);
    }
    return orElse();
  }
}

abstract class Failedstate implements ReviewblocState {
  const factory Failedstate() = _$Failedstate;
}
