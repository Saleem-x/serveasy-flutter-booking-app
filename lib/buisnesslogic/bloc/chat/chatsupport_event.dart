part of 'chatsupport_bloc.dart';

@freezed
class ChatsupportEvent with _$ChatsupportEvent {
  const factory ChatsupportEvent.getchatsevent({required String uid}) =
      Getchatsevent;
  const factory ChatsupportEvent.sendmessage(
      {required ChatModel chat, required String uid}) = Sendmessage;
}
