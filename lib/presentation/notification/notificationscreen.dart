import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/notification/notification_bloc.dart';
import 'package:project2/constents/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    context.read<NotificationBloc>().add(const Getnotifications());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorwhite,
          title: Text(
            'Notifications',
            style: fontstyle(color: colorblack),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              CupertinoIcons.back,
              color: colorblack,
            ),
          ),
        ),
        body: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            return state.when(
              () => const Center(
                child: CircularProgressIndicator(),
              ),
              loadingState: () => const Center(
                child: CircularProgressIndicator(),
              ),
              havenotification: (notificationlist) => ListView.separated(
                itemBuilder: (context, index) {
                  return notificationlist.isEmpty
                      ? const Center(
                          child: Text('No Notification Available'),
                        )
                      : ListTile(
                          leading: SizedBox(
                            height: size.height * 0.06,
                            width: size.height * 0.06,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                size: size,
                                child: notificationlist[index].imageurl ==
                                            'no-img' ||
                                        notificationlist[index].imageurl == null
                                    ? Image.asset(
                                        'assets/images/profiletemp.jpg',
                                        fit: BoxFit.cover,
                                      )
                                    : Image.network(
                                        notificationlist[index].imageurl!,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                          ),
                          title: Text(notificationlist[index].title),
                          subtitle: Text(notificationlist[index].content),
                          trailing: Text(
                            notificationlist[index].date.split(' ').toList()[0],
                          ),
                        );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: size.height * 0.01,
                ),
                itemCount: notificationlist!.length,
              ),
              failedtoget: () => const Center(
                child: Text('something went wrong'),
              ),
            );
          },
        ));
  }
}

/* 
notificationlist[index].imageurl =='no-img' ||notificationlist[index].imageurl ==ull
                                            ? AssetImage(assetName)
                                            : NetworkImage(
                                                notificationlist[index]
                                                    .imageurl!) */
