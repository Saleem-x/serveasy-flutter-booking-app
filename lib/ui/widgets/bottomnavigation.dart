import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/bloc/bottomnavbar/bottomnavbar_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/accountinfo/accountinfo.dart';
import 'package:project2/ui/homescreen.dart';
import 'package:project2/ui/services/servicesscreen.dart';
import 'package:project2/ui/support/supportscreen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BottomnavbarBloc>(context).add(Changepage(index: 0));
    PageController controller = PageController();
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: colorblue, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 8,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
          child: BlocBuilder<BottomnavbarBloc, BottomnavbarState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomappbaritems(context,
                      icon: Icons.home,
                      label: 'home',
                      page: 0,
                      controller: controller),
                  bottomappbaritems(context,
                      icon: FontAwesomeIcons.message,
                      label: 'Support',
                      page: 1,
                      controller: controller),
                  bottomappbaritems(context,
                      icon: FontAwesomeIcons.box,
                      label: 'products',
                      page: 2,
                      controller: controller),
                  bottomappbaritems(context,
                      icon: Icons.person,
                      label: 'Account',
                      page: 3,
                      controller: controller),
                ],
              );
            },
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BlocBuilder<BottomnavbarBloc, BottomnavbarState>(
            builder: (context, state) {
              return PageView(
                onPageChanged: (value) {
                  controller.jumpToPage(value);
                  BlocProvider.of<BottomnavbarBloc>(context)
                      .add(Changepage(index: value));
                },
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomeScreen(),
                  SupportScreen(),
                  ServicesScreen(),
                  AccountInfoScreen(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget bottomappbaritems(BuildContext context,
      {required icon,
      required,
      page,
      required label,
      required PageController controller}) {
    return BlocBuilder<BottomnavbarBloc, BottomnavbarState>(
      builder: (context, state) {
        return ZoomTapAnimation(
          onTap: () {
            controller.jumpToPage(page);
            BlocProvider.of<BottomnavbarBloc>(context)
                .add(Changepage(index: page));
          },
          child: Container(
            width: 70,
            height: 40,
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: state.index == page ? colorwhite : Colors.grey,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: state.index == page ? colorwhite : Colors.grey,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
