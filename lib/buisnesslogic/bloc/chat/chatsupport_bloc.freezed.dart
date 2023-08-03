// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatsupport_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatsupportEvent {
  String get uid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getchatsevent,
    required TResult Function(ChatModel chat, String uid) sendmessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getchatsevent,
    TResult? Function(ChatModel chat, String uid)? sendmessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getchatsevent,
    TResult Function(ChatModel chat, String uid)? sendmessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getchatsevent value) getchatsevent,
    required TResult Function(Sendmessage value) sendmessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getchatsevent value)? getchatsevent,
    TResult? Function(Sendmessage value)? sendmessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getchatsevent value)? getchatsevent,
    TResult Function(Sendmessage value)? sendmessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsupportEventCopyWith<ChatsupportEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsupportEventCopyWith<$Res> {
  factory $ChatsupportEventCopyWith(
          ChatsupportEvent value, $Res Function(ChatsupportEvent) then) =
      _$ChatsupportEventCopyWithImpl<$Res, ChatsupportEvent>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class _$ChatsupportEventCopyWithImpl<$Res, $Val extends ChatsupportEvent>
    implements $ChatsupportEventCopyWith<$Res> {
  _$ChatsupportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetchatseventCopyWith<$Res>
    implements $ChatsupportEventCopyWith<$Res> {
  factory _$$GetchatseventCopyWith(
          _$Getchatsevent value, $Res Function(_$Getchatsevent) then) =
      __$$GetchatseventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$GetchatseventCopyWithImpl<$Res>
    extends _$ChatsupportEventCopyWithImpl<$Res, _$Getchatsevent>
    implements _$$GetchatseventCopyWith<$Res> {
  __$$GetchatseventCopyWithImpl(
      _$Getchatsevent _value, $Res Function(_$Getchatsevent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$Getchatsevent(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Getchatsevent implements Getchatsevent {
  const _$Getchatsevent({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'ChatsupportEvent.getchatsevent(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Getchatsevent &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetchatseventCopyWith<_$Getchatsevent> get copyWith =>
      __$$GetchatseventCopyWithImpl<_$Getchatsevent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getchatsevent,
    required TResult Function(ChatModel chat, String uid) sendmessage,
  }) {
    return getchatsevent(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getchatsevent,
    TResult? Function(ChatModel chat, String uid)? sendmessage,
  }) {
    return getchatsevent?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getchatsevent,
    TResult Function(ChatModel chat, String uid)? sendmessage,
    required TResult orElse(),
  }) {
    if (getchatsevent != null) {
      return getchatsevent(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getchatsevent value) getchatsevent,
    required TResult Function(Sendmessage value) sendmessage,
  }) {
    return getchatsevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getchatsevent value)? getchatsevent,
    TResult? Function(Sendmessage value)? sendmessage,
  }) {
    return getchatsevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getchatsevent value)? getchatsevent,
    TResult Function(Sendmessage value)? sendmessage,
    required TResult orElse(),
  }) {
    if (getchatsevent != null) {
      return getchatsevent(this);
    }
    return orElse();
  }
}

abstract class Getchatsevent implements ChatsupportEvent {
  const factory Getchatsevent({required final String uid}) = _$Getchatsevent;

  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$GetchatseventCopyWith<_$Getchatsevent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendmessageCopyWith<$Res>
    implements $ChatsupportEventCopyWith<$Res> {
  factory _$$SendmessageCopyWith(
          _$Sendmessage value, $Res Function(_$Sendmessage) then) =
      __$$SendmessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModel chat, String uid});
}

/// @nodoc
class __$$SendmessageCopyWithImpl<$Res>
    extends _$ChatsupportEventCopyWithImpl<$Res, _$Sendmessage>
    implements _$$SendmessageCopyWith<$Res> {
  __$$SendmessageCopyWithImpl(
      _$Sendmessage _value, $Res Function(_$Sendmessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? uid = null,
  }) {
    return _then(_$Sendmessage(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatModel,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Sendmessage implements Sendmessage {
  const _$Sendmessage({required this.chat, required this.uid});

  @override
  final ChatModel chat;
  @override
  final String uid;

  @override
  String toString() {
    return 'ChatsupportEvent.sendmessage(chat: $chat, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Sendmessage &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendmessageCopyWith<_$Sendmessage> get copyWith =>
      __$$SendmessageCopyWithImpl<_$Sendmessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getchatsevent,
    required TResult Function(ChatModel chat, String uid) sendmessage,
  }) {
    return sendmessage(chat, uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getchatsevent,
    TResult? Function(ChatModel chat, String uid)? sendmessage,
  }) {
    return sendmessage?.call(chat, uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getchatsevent,
    TResult Function(ChatModel chat, String uid)? sendmessage,
    required TResult orElse(),
  }) {
    if (sendmessage != null) {
      return sendmessage(chat, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getchatsevent value) getchatsevent,
    required TResult Function(Sendmessage value) sendmessage,
  }) {
    return sendmessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getchatsevent value)? getchatsevent,
    TResult? Function(Sendmessage value)? sendmessage,
  }) {
    return sendmessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getchatsevent value)? getchatsevent,
    TResult Function(Sendmessage value)? sendmessage,
    required TResult orElse(),
  }) {
    if (sendmessage != null) {
      return sendmessage(this);
    }
    return orElse();
  }
}

abstract class Sendmessage implements ChatsupportEvent {
  const factory Sendmessage(
      {required final ChatModel chat,
      required final String uid}) = _$Sendmessage;

  ChatModel get chat;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$SendmessageCopyWith<_$Sendmessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsupportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist) $default, {
    required TResult Function(List<ChatModel> chatList) chatListLoaded,
    required TResult Function() erroroccuredstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ChatModel>? chatlist)? $default, {
    TResult? Function(List<ChatModel> chatList)? chatListLoaded,
    TResult? Function()? erroroccuredstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist)? $default, {
    TResult Function(List<ChatModel> chatList)? chatListLoaded,
    TResult Function()? erroroccuredstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatsupportState value) $default, {
    required TResult Function(ChatListLoaded value) chatListLoaded,
    required TResult Function(Erroroccuredstate value) erroroccuredstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatsupportState value)? $default, {
    TResult? Function(ChatListLoaded value)? chatListLoaded,
    TResult? Function(Erroroccuredstate value)? erroroccuredstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatsupportState value)? $default, {
    TResult Function(ChatListLoaded value)? chatListLoaded,
    TResult Function(Erroroccuredstate value)? erroroccuredstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsupportStateCopyWith<$Res> {
  factory $ChatsupportStateCopyWith(
          ChatsupportState value, $Res Function(ChatsupportState) then) =
      _$ChatsupportStateCopyWithImpl<$Res, ChatsupportState>;
}

/// @nodoc
class _$ChatsupportStateCopyWithImpl<$Res, $Val extends ChatsupportState>
    implements $ChatsupportStateCopyWith<$Res> {
  _$ChatsupportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatsupportStateCopyWith<$Res> {
  factory _$$_ChatsupportStateCopyWith(
          _$_ChatsupportState value, $Res Function(_$_ChatsupportState) then) =
      __$$_ChatsupportStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatModel>? chatlist});
}

/// @nodoc
class __$$_ChatsupportStateCopyWithImpl<$Res>
    extends _$ChatsupportStateCopyWithImpl<$Res, _$_ChatsupportState>
    implements _$$_ChatsupportStateCopyWith<$Res> {
  __$$_ChatsupportStateCopyWithImpl(
      _$_ChatsupportState _value, $Res Function(_$_ChatsupportState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatlist = freezed,
  }) {
    return _then(_$_ChatsupportState(
      chatlist: freezed == chatlist
          ? _value._chatlist
          : chatlist // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>?,
    ));
  }
}

/// @nodoc

class _$_ChatsupportState implements _ChatsupportState {
  _$_ChatsupportState({required final List<ChatModel>? chatlist})
      : _chatlist = chatlist;

  final List<ChatModel>? _chatlist;
  @override
  List<ChatModel>? get chatlist {
    final value = _chatlist;
    if (value == null) return null;
    if (_chatlist is EqualUnmodifiableListView) return _chatlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatsupportState(chatlist: $chatlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatsupportState &&
            const DeepCollectionEquality().equals(other._chatlist, _chatlist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chatlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatsupportStateCopyWith<_$_ChatsupportState> get copyWith =>
      __$$_ChatsupportStateCopyWithImpl<_$_ChatsupportState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist) $default, {
    required TResult Function(List<ChatModel> chatList) chatListLoaded,
    required TResult Function() erroroccuredstate,
  }) {
    return $default(chatlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ChatModel>? chatlist)? $default, {
    TResult? Function(List<ChatModel> chatList)? chatListLoaded,
    TResult? Function()? erroroccuredstate,
  }) {
    return $default?.call(chatlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist)? $default, {
    TResult Function(List<ChatModel> chatList)? chatListLoaded,
    TResult Function()? erroroccuredstate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(chatlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatsupportState value) $default, {
    required TResult Function(ChatListLoaded value) chatListLoaded,
    required TResult Function(Erroroccuredstate value) erroroccuredstate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatsupportState value)? $default, {
    TResult? Function(ChatListLoaded value)? chatListLoaded,
    TResult? Function(Erroroccuredstate value)? erroroccuredstate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatsupportState value)? $default, {
    TResult Function(ChatListLoaded value)? chatListLoaded,
    TResult Function(Erroroccuredstate value)? erroroccuredstate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ChatsupportState implements ChatsupportState {
  factory _ChatsupportState({required final List<ChatModel>? chatlist}) =
      _$_ChatsupportState;

  List<ChatModel>? get chatlist;
  @JsonKey(ignore: true)
  _$$_ChatsupportStateCopyWith<_$_ChatsupportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatListLoadedCopyWith<$Res> {
  factory _$$ChatListLoadedCopyWith(
          _$ChatListLoaded value, $Res Function(_$ChatListLoaded) then) =
      __$$ChatListLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatModel> chatList});
}

/// @nodoc
class __$$ChatListLoadedCopyWithImpl<$Res>
    extends _$ChatsupportStateCopyWithImpl<$Res, _$ChatListLoaded>
    implements _$$ChatListLoadedCopyWith<$Res> {
  __$$ChatListLoadedCopyWithImpl(
      _$ChatListLoaded _value, $Res Function(_$ChatListLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatList = null,
  }) {
    return _then(_$ChatListLoaded(
      null == chatList
          ? _value._chatList
          : chatList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
    ));
  }
}

/// @nodoc

class _$ChatListLoaded implements ChatListLoaded {
  const _$ChatListLoaded(final List<ChatModel> chatList) : _chatList = chatList;

  final List<ChatModel> _chatList;
  @override
  List<ChatModel> get chatList {
    if (_chatList is EqualUnmodifiableListView) return _chatList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatList);
  }

  @override
  String toString() {
    return 'ChatsupportState.chatListLoaded(chatList: $chatList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListLoaded &&
            const DeepCollectionEquality().equals(other._chatList, _chatList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chatList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListLoadedCopyWith<_$ChatListLoaded> get copyWith =>
      __$$ChatListLoadedCopyWithImpl<_$ChatListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist) $default, {
    required TResult Function(List<ChatModel> chatList) chatListLoaded,
    required TResult Function() erroroccuredstate,
  }) {
    return chatListLoaded(chatList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ChatModel>? chatlist)? $default, {
    TResult? Function(List<ChatModel> chatList)? chatListLoaded,
    TResult? Function()? erroroccuredstate,
  }) {
    return chatListLoaded?.call(chatList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist)? $default, {
    TResult Function(List<ChatModel> chatList)? chatListLoaded,
    TResult Function()? erroroccuredstate,
    required TResult orElse(),
  }) {
    if (chatListLoaded != null) {
      return chatListLoaded(chatList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatsupportState value) $default, {
    required TResult Function(ChatListLoaded value) chatListLoaded,
    required TResult Function(Erroroccuredstate value) erroroccuredstate,
  }) {
    return chatListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatsupportState value)? $default, {
    TResult? Function(ChatListLoaded value)? chatListLoaded,
    TResult? Function(Erroroccuredstate value)? erroroccuredstate,
  }) {
    return chatListLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatsupportState value)? $default, {
    TResult Function(ChatListLoaded value)? chatListLoaded,
    TResult Function(Erroroccuredstate value)? erroroccuredstate,
    required TResult orElse(),
  }) {
    if (chatListLoaded != null) {
      return chatListLoaded(this);
    }
    return orElse();
  }
}

abstract class ChatListLoaded implements ChatsupportState {
  const factory ChatListLoaded(final List<ChatModel> chatList) =
      _$ChatListLoaded;

  List<ChatModel> get chatList;
  @JsonKey(ignore: true)
  _$$ChatListLoadedCopyWith<_$ChatListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErroroccuredstateCopyWith<$Res> {
  factory _$$ErroroccuredstateCopyWith(
          _$Erroroccuredstate value, $Res Function(_$Erroroccuredstate) then) =
      __$$ErroroccuredstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErroroccuredstateCopyWithImpl<$Res>
    extends _$ChatsupportStateCopyWithImpl<$Res, _$Erroroccuredstate>
    implements _$$ErroroccuredstateCopyWith<$Res> {
  __$$ErroroccuredstateCopyWithImpl(
      _$Erroroccuredstate _value, $Res Function(_$Erroroccuredstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Erroroccuredstate implements Erroroccuredstate {
  _$Erroroccuredstate();

  @override
  String toString() {
    return 'ChatsupportState.erroroccuredstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Erroroccuredstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist) $default, {
    required TResult Function(List<ChatModel> chatList) chatListLoaded,
    required TResult Function() erroroccuredstate,
  }) {
    return erroroccuredstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ChatModel>? chatlist)? $default, {
    TResult? Function(List<ChatModel> chatList)? chatListLoaded,
    TResult? Function()? erroroccuredstate,
  }) {
    return erroroccuredstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ChatModel>? chatlist)? $default, {
    TResult Function(List<ChatModel> chatList)? chatListLoaded,
    TResult Function()? erroroccuredstate,
    required TResult orElse(),
  }) {
    if (erroroccuredstate != null) {
      return erroroccuredstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatsupportState value) $default, {
    required TResult Function(ChatListLoaded value) chatListLoaded,
    required TResult Function(Erroroccuredstate value) erroroccuredstate,
  }) {
    return erroroccuredstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatsupportState value)? $default, {
    TResult? Function(ChatListLoaded value)? chatListLoaded,
    TResult? Function(Erroroccuredstate value)? erroroccuredstate,
  }) {
    return erroroccuredstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatsupportState value)? $default, {
    TResult Function(ChatListLoaded value)? chatListLoaded,
    TResult Function(Erroroccuredstate value)? erroroccuredstate,
    required TResult orElse(),
  }) {
    if (erroroccuredstate != null) {
      return erroroccuredstate(this);
    }
    return orElse();
  }
}

abstract class Erroroccuredstate implements ChatsupportState {
  factory Erroroccuredstate() = _$Erroroccuredstate;
}
