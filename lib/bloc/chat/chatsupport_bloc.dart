import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/chatmodel.dart';
import 'package:project2/domain/repos/ichatrepo.dart';

part 'chatsupport_event.dart';
part 'chatsupport_state.dart';
part 'chatsupport_bloc.freezed.dart';

@injectable
class ChatsupportBloc extends Bloc<ChatsupportEvent, ChatsupportState> {
  final IChatResponseRepo chatResponseRepo;
  ChatsupportBloc(this.chatResponseRepo) : super(ChatsupportState.initial()) {
    on<Getchatsevent>((event, emit) async {
      Either<MainFailures, List<ChatModel>> chatlist =
          await chatResponseRepo.getchatchatlist(event.uid);

      emit(chatlist.fold(
          (l) => Erroroccuredstate(), (r) => ChatsupportState(chatlist: r)));
    });
    on<Sendmessage>((event, emit) async {
      Either<MainFailures, ChatModel> sendmessage =
          await chatResponseRepo.sendmesage(event.chat, event.uid);
      emit(sendmessage.fold((l) => Erroroccuredstate(), (r) => state));
    });
  }
}
