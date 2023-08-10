// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cartorders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartordersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getcartordersevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getcartordersevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getcartordersevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getcartordersevent value) getcartordersevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Getcartordersevent value)? getcartordersevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getcartordersevent value)? getcartordersevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartordersEventCopyWith<$Res> {
  factory $CartordersEventCopyWith(
          CartordersEvent value, $Res Function(CartordersEvent) then) =
      _$CartordersEventCopyWithImpl<$Res, CartordersEvent>;
}

/// @nodoc
class _$CartordersEventCopyWithImpl<$Res, $Val extends CartordersEvent>
    implements $CartordersEventCopyWith<$Res> {
  _$CartordersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetcartorderseventCopyWith<$Res> {
  factory _$$_GetcartorderseventCopyWith(_$_Getcartordersevent value,
          $Res Function(_$_Getcartordersevent) then) =
      __$$_GetcartorderseventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetcartorderseventCopyWithImpl<$Res>
    extends _$CartordersEventCopyWithImpl<$Res, _$_Getcartordersevent>
    implements _$$_GetcartorderseventCopyWith<$Res> {
  __$$_GetcartorderseventCopyWithImpl(
      _$_Getcartordersevent _value, $Res Function(_$_Getcartordersevent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Getcartordersevent implements _Getcartordersevent {
  const _$_Getcartordersevent();

  @override
  String toString() {
    return 'CartordersEvent.getcartordersevent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Getcartordersevent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getcartordersevent,
  }) {
    return getcartordersevent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getcartordersevent,
  }) {
    return getcartordersevent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getcartordersevent,
    required TResult orElse(),
  }) {
    if (getcartordersevent != null) {
      return getcartordersevent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getcartordersevent value) getcartordersevent,
  }) {
    return getcartordersevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Getcartordersevent value)? getcartordersevent,
  }) {
    return getcartordersevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getcartordersevent value)? getcartordersevent,
    required TResult orElse(),
  }) {
    if (getcartordersevent != null) {
      return getcartordersevent(this);
    }
    return orElse();
  }
}

abstract class _Getcartordersevent implements CartordersEvent {
  const factory _Getcartordersevent() = _$_Getcartordersevent;
}

/// @nodoc
mixin _$CartordersState {
  List<CartOrderModel>? get cartorders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartordersStateCopyWith<CartordersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartordersStateCopyWith<$Res> {
  factory $CartordersStateCopyWith(
          CartordersState value, $Res Function(CartordersState) then) =
      _$CartordersStateCopyWithImpl<$Res, CartordersState>;
  @useResult
  $Res call({List<CartOrderModel>? cartorders});
}

/// @nodoc
class _$CartordersStateCopyWithImpl<$Res, $Val extends CartordersState>
    implements $CartordersStateCopyWith<$Res> {
  _$CartordersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartorders = freezed,
  }) {
    return _then(_value.copyWith(
      cartorders: freezed == cartorders
          ? _value.cartorders
          : cartorders // ignore: cast_nullable_to_non_nullable
              as List<CartOrderModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartordersStateCopyWith<$Res>
    implements $CartordersStateCopyWith<$Res> {
  factory _$$_CartordersStateCopyWith(
          _$_CartordersState value, $Res Function(_$_CartordersState) then) =
      __$$_CartordersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartOrderModel>? cartorders});
}

/// @nodoc
class __$$_CartordersStateCopyWithImpl<$Res>
    extends _$CartordersStateCopyWithImpl<$Res, _$_CartordersState>
    implements _$$_CartordersStateCopyWith<$Res> {
  __$$_CartordersStateCopyWithImpl(
      _$_CartordersState _value, $Res Function(_$_CartordersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartorders = freezed,
  }) {
    return _then(_$_CartordersState(
      cartorders: freezed == cartorders
          ? _value._cartorders
          : cartorders // ignore: cast_nullable_to_non_nullable
              as List<CartOrderModel>?,
    ));
  }
}

/// @nodoc

class _$_CartordersState implements _CartordersState {
  const _$_CartordersState({required final List<CartOrderModel>? cartorders})
      : _cartorders = cartorders;

  final List<CartOrderModel>? _cartorders;
  @override
  List<CartOrderModel>? get cartorders {
    final value = _cartorders;
    if (value == null) return null;
    if (_cartorders is EqualUnmodifiableListView) return _cartorders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartordersState(cartorders: $cartorders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartordersState &&
            const DeepCollectionEquality()
                .equals(other._cartorders, _cartorders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartorders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartordersStateCopyWith<_$_CartordersState> get copyWith =>
      __$$_CartordersStateCopyWithImpl<_$_CartordersState>(this, _$identity);
}

abstract class _CartordersState implements CartordersState {
  const factory _CartordersState(
      {required final List<CartOrderModel>? cartorders}) = _$_CartordersState;

  @override
  List<CartOrderModel>? get cartorders;
  @override
  @JsonKey(ignore: true)
  _$$_CartordersStateCopyWith<_$_CartordersState> get copyWith =>
      throw _privateConstructorUsedError;
}
