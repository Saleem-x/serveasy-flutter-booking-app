// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choicechips_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChoicechipsState {
  bool get isService => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChoicechipsStateCopyWith<ChoicechipsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicechipsStateCopyWith<$Res> {
  factory $ChoicechipsStateCopyWith(
          ChoicechipsState value, $Res Function(ChoicechipsState) then) =
      _$ChoicechipsStateCopyWithImpl<$Res, ChoicechipsState>;
  @useResult
  $Res call({bool isService});
}

/// @nodoc
class _$ChoicechipsStateCopyWithImpl<$Res, $Val extends ChoicechipsState>
    implements $ChoicechipsStateCopyWith<$Res> {
  _$ChoicechipsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isService = null,
  }) {
    return _then(_value.copyWith(
      isService: null == isService
          ? _value.isService
          : isService // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoicechipsStateCopyWith<$Res>
    implements $ChoicechipsStateCopyWith<$Res> {
  factory _$$_ChoicechipsStateCopyWith(
          _$_ChoicechipsState value, $Res Function(_$_ChoicechipsState) then) =
      __$$_ChoicechipsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isService});
}

/// @nodoc
class __$$_ChoicechipsStateCopyWithImpl<$Res>
    extends _$ChoicechipsStateCopyWithImpl<$Res, _$_ChoicechipsState>
    implements _$$_ChoicechipsStateCopyWith<$Res> {
  __$$_ChoicechipsStateCopyWithImpl(
      _$_ChoicechipsState _value, $Res Function(_$_ChoicechipsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isService = null,
  }) {
    return _then(_$_ChoicechipsState(
      isService: null == isService
          ? _value.isService
          : isService // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChoicechipsState implements _ChoicechipsState {
  const _$_ChoicechipsState({required this.isService});

  @override
  final bool isService;

  @override
  String toString() {
    return 'ChoicechipsState(isService: $isService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoicechipsState &&
            (identical(other.isService, isService) ||
                other.isService == isService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoicechipsStateCopyWith<_$_ChoicechipsState> get copyWith =>
      __$$_ChoicechipsStateCopyWithImpl<_$_ChoicechipsState>(this, _$identity);
}

abstract class _ChoicechipsState implements ChoicechipsState {
  const factory _ChoicechipsState({required final bool isService}) =
      _$_ChoicechipsState;

  @override
  bool get isService;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicechipsStateCopyWith<_$_ChoicechipsState> get copyWith =>
      throw _privateConstructorUsedError;
}
