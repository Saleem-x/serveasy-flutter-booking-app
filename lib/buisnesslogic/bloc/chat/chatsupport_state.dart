part of 'chatsupport_bloc.dart';

@freezed
class ChatsupportState with _$ChatsupportState {
  factory ChatsupportState({required List<ChatModel>? chatlist}) =
      _ChatsupportState;
  const factory ChatsupportState.chatListLoaded(List<ChatModel> chatList) =
      ChatListLoaded;
  factory ChatsupportState.erroroccuredstate() = Erroroccuredstate;

  factory ChatsupportState.initial() => ChatsupportState(chatlist: null);
}
