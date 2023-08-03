// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookinglist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookinglistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getallbookedservices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getallbookedservices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getallbookedservices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getallbookedservices value) getallbookedservices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getallbookedservices value)? getallbookedservices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getallbookedservices value)? getallbookedservices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookinglistEventCopyWith<$Res> {
  factory $BookinglistEventCopyWith(
          BookinglistEvent value, $Res Function(BookinglistEvent) then) =
      _$BookinglistEventCopyWithImpl<$Res, BookinglistEvent>;
}

/// @nodoc
class _$BookinglistEventCopyWithImpl<$Res, $Val extends BookinglistEvent>
    implements $BookinglistEventCopyWith<$Res> {
  _$BookinglistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetallbookedservicesCopyWith<$Res> {
  factory _$$GetallbookedservicesCopyWith(_$Getallbookedservices value,
          $Res Function(_$Getallbookedservices) then) =
      __$$GetallbookedservicesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetallbookedservicesCopyWithImpl<$Res>
    extends _$BookinglistEventCopyWithImpl<$Res, _$Getallbookedservices>
    implements _$$GetallbookedservicesCopyWith<$Res> {
  __$$GetallbookedservicesCopyWithImpl(_$Getallbookedservices _value,
      $Res Function(_$Getallbookedservices) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Getallbookedservices implements Getallbookedservices {
  const _$Getallbookedservices();

  @override
  String toString() {
    return 'BookinglistEvent.getallbookedservices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Getallbookedservices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getallbookedservices,
  }) {
    return getallbookedservices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getallbookedservices,
  }) {
    return getallbookedservices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getallbookedservices,
    required TResult orElse(),
  }) {
    if (getallbookedservices != null) {
      return getallbookedservices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getallbookedservices value) getallbookedservices,
  }) {
    return getallbookedservices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getallbookedservices value)? getallbookedservices,
  }) {
    return getallbookedservices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getallbookedservices value)? getallbookedservices,
    required TResult orElse(),
  }) {
    if (getallbookedservices != null) {
      return getallbookedservices(this);
    }
    return orElse();
  }
}

abstract class Getallbookedservices implements BookinglistEvent {
  const factory Getallbookedservices() = _$Getallbookedservices;
}

/// @nodoc
mixin _$BookinglistState {
  List<GetServicemodel>? get bookedservices =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookinglistStateCopyWith<BookinglistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookinglistStateCopyWith<$Res> {
  factory $BookinglistStateCopyWith(
          BookinglistState value, $Res Function(BookinglistState) then) =
      _$BookinglistStateCopyWithImpl<$Res, BookinglistState>;
  @useResult
  $Res call({List<GetServicemodel>? bookedservices});
}

/// @nodoc
class _$BookinglistStateCopyWithImpl<$Res, $Val extends BookinglistState>
    implements $BookinglistStateCopyWith<$Res> {
  _$BookinglistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookedservices = freezed,
  }) {
    return _then(_value.copyWith(
      bookedservices: freezed == bookedservices
          ? _value.bookedservices
          : bookedservices // ignore: cast_nullable_to_non_nullable
              as List<GetServicemodel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookinglistStateCopyWith<$Res>
    implements $BookinglistStateCopyWith<$Res> {
  factory _$$_BookinglistStateCopyWith(
          _$_BookinglistState value, $Res Function(_$_BookinglistState) then) =
      __$$_BookinglistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetServicemodel>? bookedservices});
}

/// @nodoc
class __$$_BookinglistStateCopyWithImpl<$Res>
    extends _$BookinglistStateCopyWithImpl<$Res, _$_BookinglistState>
    implements _$$_BookinglistStateCopyWith<$Res> {
  __$$_BookinglistStateCopyWithImpl(
      _$_BookinglistState _value, $Res Function(_$_BookinglistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookedservices = freezed,
  }) {
    return _then(_$_BookinglistState(
      bookedservices: freezed == bookedservices
          ? _value._bookedservices
          : bookedservices // ignore: cast_nullable_to_non_nullable
              as List<GetServicemodel>?,
    ));
  }
}

/// @nodoc

class _$_BookinglistState implements _BookinglistState {
  const _$_BookinglistState(
      {required final List<GetServicemodel>? bookedservices})
      : _bookedservices = bookedservices;

  final List<GetServicemodel>? _bookedservices;
  @override
  List<GetServicemodel>? get bookedservices {
    final value = _bookedservices;
    if (value == null) return null;
    if (_bookedservices is EqualUnmodifiableListView) return _bookedservices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookinglistState(bookedservices: $bookedservices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookinglistState &&
            const DeepCollectionEquality()
                .equals(other._bookedservices, _bookedservices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookedservices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookinglistStateCopyWith<_$_BookinglistState> get copyWith =>
      __$$_BookinglistStateCopyWithImpl<_$_BookinglistState>(this, _$identity);
}

abstract class _BookinglistState implements BookinglistState {
  const factory _BookinglistState(
          {required final List<GetServicemodel>? bookedservices}) =
      _$_BookinglistState;

  @override
  List<GetServicemodel>? get bookedservices;
  @override
  @JsonKey(ignore: true)
  _$$_BookinglistStateCopyWith<_$_BookinglistState> get copyWith =>
      throw _privateConstructorUsedError;
}
