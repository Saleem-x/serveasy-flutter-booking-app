// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviewpagination_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewpaginationState {
  List<ReviewModel> get reviewlist => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewpaginationStateCopyWith<ReviewpaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewpaginationStateCopyWith<$Res> {
  factory $ReviewpaginationStateCopyWith(ReviewpaginationState value,
          $Res Function(ReviewpaginationState) then) =
      _$ReviewpaginationStateCopyWithImpl<$Res, ReviewpaginationState>;
  @useResult
  $Res call({List<ReviewModel> reviewlist, bool isloading});
}

/// @nodoc
class _$ReviewpaginationStateCopyWithImpl<$Res,
        $Val extends ReviewpaginationState>
    implements $ReviewpaginationStateCopyWith<$Res> {
  _$ReviewpaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewlist = null,
    Object? isloading = null,
  }) {
    return _then(_value.copyWith(
      reviewlist: null == reviewlist
          ? _value.reviewlist
          : reviewlist // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewpaginationStateCopyWith<$Res>
    implements $ReviewpaginationStateCopyWith<$Res> {
  factory _$$_ReviewpaginationStateCopyWith(_$_ReviewpaginationState value,
          $Res Function(_$_ReviewpaginationState) then) =
      __$$_ReviewpaginationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReviewModel> reviewlist, bool isloading});
}

/// @nodoc
class __$$_ReviewpaginationStateCopyWithImpl<$Res>
    extends _$ReviewpaginationStateCopyWithImpl<$Res, _$_ReviewpaginationState>
    implements _$$_ReviewpaginationStateCopyWith<$Res> {
  __$$_ReviewpaginationStateCopyWithImpl(_$_ReviewpaginationState _value,
      $Res Function(_$_ReviewpaginationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewlist = null,
    Object? isloading = null,
  }) {
    return _then(_$_ReviewpaginationState(
      reviewlist: null == reviewlist
          ? _value._reviewlist
          : reviewlist // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReviewpaginationState implements _ReviewpaginationState {
  const _$_ReviewpaginationState(
      {required final List<ReviewModel> reviewlist, required this.isloading})
      : _reviewlist = reviewlist;

  final List<ReviewModel> _reviewlist;
  @override
  List<ReviewModel> get reviewlist {
    if (_reviewlist is EqualUnmodifiableListView) return _reviewlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewlist);
  }

  @override
  final bool isloading;

  @override
  String toString() {
    return 'ReviewpaginationState(reviewlist: $reviewlist, isloading: $isloading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewpaginationState &&
            const DeepCollectionEquality()
                .equals(other._reviewlist, _reviewlist) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviewlist), isloading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewpaginationStateCopyWith<_$_ReviewpaginationState> get copyWith =>
      __$$_ReviewpaginationStateCopyWithImpl<_$_ReviewpaginationState>(
          this, _$identity);
}

abstract class _ReviewpaginationState implements ReviewpaginationState {
  const factory _ReviewpaginationState(
      {required final List<ReviewModel> reviewlist,
      required final bool isloading}) = _$_ReviewpaginationState;

  @override
  List<ReviewModel> get reviewlist;
  @override
  bool get isloading;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewpaginationStateCopyWith<_$_ReviewpaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}
