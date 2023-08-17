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

  User user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
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
