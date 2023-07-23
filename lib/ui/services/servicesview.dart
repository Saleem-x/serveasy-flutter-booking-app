import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/calender/calender_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/models/servicemodel.dart';
import 'package:project2/ui/services/booknow.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:table_calendar/table_calendar.dart';

class ServiceView extends StatelessWidget {
  final ServiceModel service;
  const ServiceView({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height / 1.5,
                  decoration: BoxDecoration(
                    color: colorblue,
                    image: DecorationImage(
                        image: NetworkImage(service.imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: colorwhite,
                    ),
                  ),
                ),
              ],
            ),
            BlocBuilder<CalenderBloc, CalenderState>(
              builder: (context, state) {
                return SlidingUpPanel(
                  color: colorwhite,
                  minHeight: size.height / 3,
                  maxHeight: size.height - 50,
                  borderRadius: BorderRadius.circular(20),
                  panel: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height * 0.013,
                              width: size.width * 0.12,
                              decoration: BoxDecoration(
                                color: colorlightshade,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  service.name,
                                  style: fontstyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: colorblack),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Text(
                                  'From ₹${service.price}',
                                  style: fontstyle(color: colorgreyshade),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    side: const BorderSide(
                                      color: colorblack,
                                      width: 2.0,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const BookNowScreen(),
                                        ));
                                  },
                                  child: Text(
                                    'Book Now',
                                    style: fontstyle(color: colorblack),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width - 30,
                        child: const Divider(
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'About:-',
                              style: fontstyle(
                                color: colorblack,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          service.description,
                          style: fontstyle(
                            color: colorblack,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width - 30,
                        child: const Divider(
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'available slots in this month:-',
                              style: fontstyle(
                                color: colorblack,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: TableCalendar(
                          firstDay: DateTime.now(),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: state.selectedDay,
                          availableGestures: AvailableGestures.all,

                          // eventLoader: (day) {
                          //   return
                          // },
                          selectedDayPredicate: (day) =>
                              isSameDay(state.selectedDay, day),
                          calendarStyle:
                              const CalendarStyle(isTodayHighlighted: true),
                          onDaySelected: (selectedDay, focusedDay) {
                            focusedDay = focusedDay;
                            selectedDay = selectedDay;
                            log(selectedDay.day.toString());
                            context
                                .read<CalenderBloc>()
                                .add(DaySelectingEvent(selectedDay));
                          },
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                String key = slots.keys.elementAt(index);
                                bool value = slots[key]![index];
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: slots[key] == true
                                        ? colorblue
                                        : colorlightshade,
                                  ),
                                  height: size.height * 0.03,
                                  width: size.width / 3,
                                  child: Center(
                                    child: Text(
                                      'slot ${index + 1}',
                                      style: fontstyle(color: colorwhite),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                    width: size.width * 0.03,
                                  ),
                              itemCount: 3),
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

List<String> months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

Map<String, List<bool>> slots = {
  '10:12': [false, true, false],
  '01:03': [true, false, false],
  '04:06': [false, false, true],
};
