import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/chat/chatsupport_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/domain/models/chatmodel.dart';

import 'package:project2/presentation/support/chatlistwidget.dart';

// ignore: must_be_immutable
class SupportScreen extends StatelessWidget {
  SupportScreen({super.key});

  final StreamController<List<ChatModel>> _chatStreamController =
      StreamController<List<ChatModel>>();

  Stream<List<ChatModel>> get chatStream => _chatStreamController.stream;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  User user = FirebaseAuth.instance.currentUser!;
  final _scrollnotifier = ScrollController();

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: colorwhite,
          centerTitle: true,
          title: Text(
            'Support',
            style: fontstyle(color: colorblack, letterSpacing: 3),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.info,
                  color: colorblack,
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ChatListWidget(
                uid: user.uid,
                scrollnotifier: _scrollnotifier,
              ),
            ),
            MessageBar(
              onSend: (p0) async {
                context.read<ChatsupportBloc>().add(
                      Sendmessage(
                          chat: ChatModel(
                            p0,
                            DateTime.now().millisecondsSinceEpoch.toString(),
                            '${DateTime.now().hour}:${DateTime.now().minute}',
                            user.uid,
                            false,
                          ),
                          uid: user.uid),
                    );
                if (_scrollnotifier.hasClients) {
                  _scrollnotifier.animateTo(
                    _scrollnotifier.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                }
                context
                    .read<ChatsupportBloc>()
                    .add(Getchatsevent(uid: user.uid));
              },
            )
          ],
        ),
      ),
    );
  }
}
