import 'dart:async';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/chat/chatsupport_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/domain/models/chatmodel.dart';
import 'package:project2/functions/chat.dart';

// ignore: must_be_immutable
class ChatListWidget extends StatelessWidget {
  final String uid;
  ChatListWidget({super.key, required this.uid});

  final StreamController<List<ChatModel>> _chatStreamController =
      StreamController<List<ChatModel>>();

  Stream<List<ChatModel>> get chatStream => _chatStreamController.stream;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<ChatsupportBloc, ChatsupportState>(
      builder: (context, state) {
        return StreamBuilder<List<ChatModel>>(
            stream: Stream.fromFuture(getchats()),
            builder: (context, snapshot) {
              context.read<ChatsupportBloc>().add(Getchatsevent(uid: uid));
              return snapshot.data == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : snapshot.data!.isEmpty
                      ? const Center(
                          child: Text('no-chat'),
                        )
                      : ListView.separated(
                          dragStartBehavior: DragStartBehavior.down,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => BubbleSpecialOne(
                            text: snapshot.data![index].message,
                            textStyle: fontstyle(
                                color: snapshot.data![index].isAdmin == false
                                    ? colorblack
                                    : colorwhite),
                            color: snapshot.data![index].isAdmin == false
                                ? colorlightshade
                                : colorblue,
                            isSender: snapshot.data![index].isAdmin == false
                                ? true
                                : false,
                          ),
                          separatorBuilder: (context,
                                  index) => /* snapshot
                                      .data![index].date !=
                                  snapshot.data![index + 1].date
                              ? DateChip(
                                  date: DateTime.parse(snapshot.data![index].date),
                                )
                              : */
                              SizedBox(
                            height: size.height * 0.02,
                          ),
                          itemCount: snapshot.data!.length,
                        );
            });
      },
    );
  }
}
