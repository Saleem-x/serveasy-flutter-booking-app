import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/constents/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: ListView.separated(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: colorblue),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                title: Text('this is a Notification'),
                trailing: Icon(FontAwesomeIcons.bell),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: size.height * 0.01,
        ),
      ),
    );
  }
}
