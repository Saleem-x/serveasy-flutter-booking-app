// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getnotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getnotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getnotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getnotifications value) getnotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getnotifications value)? getnotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getnotifications value)? getnotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetnotificationsCopyWith<$Res> {
  factory _$$GetnotificationsCopyWith(
          _$Getnotifications value, $Res Function(_$Getnotifications) then) =
      __$$GetnotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetnotificationsCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$Getnotifications>
    implements _$$GetnotificationsCopyWith<$Res> {
  __$$GetnotificationsCopyWithImpl(
      _$Getnotifications _value, $Res Function(_$Getnotifications) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Getnotifications implements Getnotifications {
  const _$Getnotifications();

  @override
  String toString() {
    return 'NotificationEvent.getnotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Getnotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getnotifications,
  }) {
    return getnotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getnotifications,
  }) {
    return getnotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getnotifications,
    required TResult orElse(),
  }) {
    if (getnotifications != null) {
      return getnotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getnotifications value) getnotifications,
  }) {
    return getnotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getnotifications value)? getnotifications,
  }) {
    return getnotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getnotifications value)? getnotifications,
    required TResult orElse(),
  }) {
    if (getnotifications != null) {
      return getnotifications(this);
    }
    return orElse();
  }
}

abstract class Getnotifications implements NotificationEvent {
  const factory Getnotifications() = _$Getnotifications;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingState,
    required TResult Function(List<NotificationModel>? notificationlist)
        havenotification,
    required TResult Function() failedtoget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingState,
    TResult? Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult? Function()? failedtoget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingState,
    TResult Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult Function()? failedtoget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationState value) $default, {
    required TResult Function(_loadingState value) loadingState,
    required TResult Function(_havenotification value) havenotification,
    required TResult Function(_failedtoget value) failedtoget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationState value)? $default, {
    TResult? Function(_loadingState value)? loadingState,
    TResult? Function(_havenotification value)? havenotification,
    TResult? Function(_failedtoget value)? failedtoget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationState value)? $default, {
    TResult Function(_loadingState value)? loadingState,
    TResult Function(_havenotification value)? havenotification,
    TResult Function(_failedtoget value)? failedtoget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_NotificationState>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState();

  @override
  String toString() {
    return 'NotificationState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotificationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingState,
    required TResult Function(List<NotificationModel>? notificationlist)
        havenotification,
    required TResult Function() failedtoget,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingState,
    TResult? Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult? Function()? failedtoget,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingState,
    TResult Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult Function()? failedtoget,
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
    TResult Function(_NotificationState value) $default, {
    required TResult Function(_loadingState value) loadingState,
    required TResult Function(_havenotification value) havenotification,
    required TResult Function(_failedtoget value) failedtoget,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationState value)? $default, {
    TResult? Function(_loadingState value)? loadingState,
    TResult? Function(_havenotification value)? havenotification,
    TResult? Function(_failedtoget value)? failedtoget,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationState value)? $default, {
    TResult Function(_loadingState value)? loadingState,
    TResult Function(_havenotification value)? havenotification,
    TResult Function(_failedtoget value)? failedtoget,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState() = _$_NotificationState;
}

/// @nodoc
abstract class _$$_loadingStateCopyWith<$Res> {
  factory _$$_loadingStateCopyWith(
          _$_loadingState value, $Res Function(_$_loadingState) then) =
      __$$_loadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_loadingState>
    implements _$$_loadingStateCopyWith<$Res> {
  __$$_loadingStateCopyWithImpl(
      _$_loadingState _value, $Res Function(_$_loadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loadingState implements _loadingState {
  const _$_loadingState();

  @override
  String toString() {
    return 'NotificationState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingState,
    required TResult Function(List<NotificationModel>? notificationlist)
        havenotification,
    required TResult Function() failedtoget,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingState,
    TResult? Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult? Function()? failedtoget,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingState,
    TResult Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult Function()? failedtoget,
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
    TResult Function(_NotificationState value) $default, {
    required TResult Function(_loadingState value) loadingState,
    required TResult Function(_havenotification value) havenotification,
    required TResult Function(_failedtoget value) failedtoget,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationState value)? $default, {
    TResult? Function(_loadingState value)? loadingState,
    TResult? Function(_havenotification value)? havenotification,
    TResult? Function(_failedtoget value)? failedtoget,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationState value)? $default, {
    TResult Function(_loadingState value)? loadingState,
    TResult Function(_havenotification value)? havenotification,
    TResult Function(_failedtoget value)? failedtoget,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _loadingState implements NotificationState {
  const factory _loadingState() = _$_loadingState;
}

/// @nodoc
abstract class _$$_havenotificationCopyWith<$Res> {
  factory _$$_havenotificationCopyWith(
          _$_havenotification value, $Res Function(_$_havenotification) then) =
      __$$_havenotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationModel>? notificationlist});
}

/// @nodoc
class __$$_havenotificationCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_havenotification>
    implements _$$_havenotificationCopyWith<$Res> {
  __$$_havenotificationCopyWithImpl(
      _$_havenotification _value, $Res Function(_$_havenotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationlist = freezed,
  }) {
    return _then(_$_havenotification(
      notificationlist: freezed == notificationlist
          ? _value._notificationlist
          : notificationlist // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
    ));
  }
}

/// @nodoc

class _$_havenotification implements _havenotification {
  const _$_havenotification(
      {required final List<NotificationModel>? notificationlist})
      : _notificationlist = notificationlist;

  final List<NotificationModel>? _notificationlist;
  @override
  List<NotificationModel>? get notificationlist {
    final value = _notificationlist;
    if (value == null) return null;
    if (_notificationlist is EqualUnmodifiableListView)
      return _notificationlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationState.havenotification(notificationlist: $notificationlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_havenotification &&
            const DeepCollectionEquality()
                .equals(other._notificationlist, _notificationlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_havenotificationCopyWith<_$_havenotification> get copyWith =>
      __$$_havenotificationCopyWithImpl<_$_havenotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingState,
    required TResult Function(List<NotificationModel>? notificationlist)
        havenotification,
    required TResult Function() failedtoget,
  }) {
    return havenotification(notificationlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingState,
    TResult? Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult? Function()? failedtoget,
  }) {
    return havenotification?.call(notificationlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingState,
    TResult Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult Function()? failedtoget,
    required TResult orElse(),
  }) {
    if (havenotification != null) {
      return havenotification(notificationlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationState value) $default, {
    required TResult Function(_loadingState value) loadingState,
    required TResult Function(_havenotification value) havenotification,
    required TResult Function(_failedtoget value) failedtoget,
  }) {
    return havenotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationState value)? $default, {
    TResult? Function(_loadingState value)? loadingState,
    TResult? Function(_havenotification value)? havenotification,
    TResult? Function(_failedtoget value)? failedtoget,
  }) {
    return havenotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationState value)? $default, {
    TResult Function(_loadingState value)? loadingState,
    TResult Function(_havenotification value)? havenotification,
    TResult Function(_failedtoget value)? failedtoget,
    required TResult orElse(),
  }) {
    if (havenotification != null) {
      return havenotification(this);
    }
    return orElse();
  }
}

abstract class _havenotification implements NotificationState {
  const factory _havenotification(
          {required final List<NotificationModel>? notificationlist}) =
      _$_havenotification;

  List<NotificationModel>? get notificationlist;
  @JsonKey(ignore: true)
  _$$_havenotificationCopyWith<_$_havenotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_failedtogetCopyWith<$Res> {
  factory _$$_failedtogetCopyWith(
          _$_failedtoget value, $Res Function(_$_failedtoget) then) =
      __$$_failedtogetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_failedtogetCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_failedtoget>
    implements _$$_failedtogetCopyWith<$Res> {
  __$$_failedtogetCopyWithImpl(
      _$_failedtoget _value, $Res Function(_$_failedtoget) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_failedtoget implements _failedtoget {
  const _$_failedtoget();

  @override
  String toString() {
    return 'NotificationState.failedtoget()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_failedtoget);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingState,
    required TResult Function(List<NotificationModel>? notificationlist)
        havenotification,
    required TResult Function() failedtoget,
  }) {
    return failedtoget();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingState,
    TResult? Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult? Function()? failedtoget,
  }) {
    return failedtoget?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingState,
    TResult Function(List<NotificationModel>? notificationlist)?
        havenotification,
    TResult Function()? failedtoget,
    required TResult orElse(),
  }) {
    if (failedtoget != null) {
      return failedtoget();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NotificationState value) $default, {
    required TResult Function(_loadingState value) loadingState,
    required TResult Function(_havenotification value) havenotification,
    required TResult Function(_failedtoget value) failedtoget,
  }) {
    return failedtoget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NotificationState value)? $default, {
    TResult? Function(_loadingState value)? loadingState,
    TResult? Function(_havenotification value)? havenotification,
    TResult? Function(_failedtoget value)? failedtoget,
  }) {
    return failedtoget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NotificationState value)? $default, {
    TResult Function(_loadingState value)? loadingState,
    TResult Function(_havenotification value)? havenotification,
    TResult Function(_failedtoget value)? failedtoget,
    required TResult orElse(),
  }) {
    if (failedtoget != null) {
      return failedtoget(this);
    }
    return orElse();
  }
}

abstract class _failedtoget implements NotificationState {
  const factory _failedtoget() = _$_failedtoget;
}
