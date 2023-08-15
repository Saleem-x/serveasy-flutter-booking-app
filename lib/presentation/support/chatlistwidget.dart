import 'dart:async';
import 'package:grouped_list/grouped_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/chat/chatsupport_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/domain/models/chatmodel.dart';
import 'package:project2/functions/chat.dart';

// ignore: must_be_immutable
class ChatListWidget extends StatelessWidget {
  final String uid;
  final ScrollController scrollnotifier;
  ChatListWidget({super.key, required this.uid, required this.scrollnotifier});

  final StreamController<List<ChatModel>> _chatStreamController =
      StreamController<List<ChatModel>>();

  Stream<List<ChatModel>> get chatStream => _chatStreamController.stream;

  // final _scrollnotifier = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<ChatsupportBloc, ChatsupportState>(
      builder: (context, state) {
        return StreamBuilder<List<ChatModel>>(
            stream: getchatsStream(),
            builder: (context, snapshot) {
              // context.read<ChatsupportBloc>().add(Getchatsevent(uid: uid));
              return snapshot.data == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : snapshot.data!.isEmpty
                      ? Center(
                          child: Text(
                            'you can ask support here',
                            style: fontstyle(),
                          ),
                        )
                      : GroupedListView<ChatModel, DateTime>(
                          reverse: true,
                          order: GroupedListOrder.DESC,
                          elements: snapshot.data!,
                          groupBy: (element) =>
                              DateTime.fromMicrosecondsSinceEpoch(
                                  int.parse(element.date)),
                          itemBuilder: (context, element) {
                            return Align(
                              alignment: element.isAdmin == false
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: element.isAdmin == false
                                        ? colorblue
                                        : colorgreyshade,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        element.message,
                                        style: fontstyle(color: colorwhite),
                                      ),
                                      Text(
                                        element.time,
                                        style: fontstyle(
                                            fontSize: 10, color: colorwhite),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          groupSeparatorBuilder: (value) => SizedBox(
                            height: size.height * 0.01,
                          ),
                        );
            });
      },
    );
  }
}
