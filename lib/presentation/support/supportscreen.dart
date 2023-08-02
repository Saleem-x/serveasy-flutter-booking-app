import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/chat/chatsupport_bloc.dart';
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
            // SizedBox(
            //   height: size.height * 0.02,
            // ),
            Expanded(
              child: ChatListWidget(
                uid: user.uid,
              ),
            ),
            MessageBar(
              onSend: (p0) async {
                // sendchatsupport(
                //   ChatModel(
                //     p0,
                //     DateFormat('yyyy-MM-dd').format(DateTime.now()),
                //     '${DateTime.now().hour}:${DateTime.now().minute}',
                //     null,
                //     null,
                //   ),
                // );
                context.read<ChatsupportBloc>().add(
                      Sendmessage(
                          chat: ChatModel(
                              p0,
                              DateTime.now().microsecondsSinceEpoch.toString(),
                              '${DateTime.now().hour}:${DateTime.now().minute}',
                              user.uid,
                              false),
                          uid: user.uid),
                    );
              },
            )
          ],
        ),
      ),
    );
  }
}
