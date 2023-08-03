// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'starrating_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StarratingState {
  int get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StarratingStateCopyWith<StarratingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarratingStateCopyWith<$Res> {
  factory $StarratingStateCopyWith(
          StarratingState value, $Res Function(StarratingState) then) =
      _$StarratingStateCopyWithImpl<$Res, StarratingState>;
  @useResult
  $Res call({int rating});
}

/// @nodoc
class _$StarratingStateCopyWithImpl<$Res, $Val extends StarratingState>
    implements $StarratingStateCopyWith<$Res> {
  _$StarratingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StarratingStateCopyWith<$Res>
    implements $StarratingStateCopyWith<$Res> {
  factory _$$_StarratingStateCopyWith(
          _$_StarratingState value, $Res Function(_$_StarratingState) then) =
      __$$_StarratingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rating});
}

/// @nodoc
class __$$_StarratingStateCopyWithImpl<$Res>
    extends _$StarratingStateCopyWithImpl<$Res, _$_StarratingState>
    implements _$$_StarratingStateCopyWith<$Res> {
  __$$_StarratingStateCopyWithImpl(
      _$_StarratingState _value, $Res Function(_$_StarratingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_$_StarratingState(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StarratingState implements _StarratingState {
  const _$_StarratingState({required this.rating});

  @override
  final int rating;

  @override
  String toString() {
    return 'StarratingState(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StarratingState &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StarratingStateCopyWith<_$_StarratingState> get copyWith =>
      __$$_StarratingStateCopyWithImpl<_$_StarratingState>(this, _$identity);
}

abstract class _StarratingState implements StarratingState {
  const factory _StarratingState({required final int rating}) =
      _$_StarratingState;

  @override
  int get rating;
  @override
  @JsonKey(ignore: true)
  _$$_StarratingStateCopyWith<_$_StarratingState> get copyWith =>
      throw _privateConstructorUsedError;
}
