import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/calender/calender_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/booking.dart';
import 'package:project2/models/servicemodel.dart';
import 'package:project2/models/servisebookingmodel.dart';
import 'package:project2/ui/services/booknow.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:table_calendar/table_calendar.dart';

class ServiceView extends StatelessWidget {
  final ServiceModel service;
  const ServiceView({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      List<GetServicemodel> bookedlist =
          await getbookedservices(DateTime.now());
      // ignore: use_build_context_synchronously
      context.read<CalenderBloc>().add(GetBookedServicesEvent(bookedlist));
      // log(bookedlist.length.toString());
    });
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
                                    User? user =
                                        FirebaseAuth.instance.currentUser;

                                    final email = user!.email;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BookNowScreen(
                                            servicetobook: ServiceBookingModel(
                                                state.selectedDay,
                                                user.uid,
                                                email!,
                                                '1',
                                                email,
                                                'requirments',
                                                service,
                                                DateTime.now()
                                                    .microsecondsSinceEpoch),
                                          ),
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
                          calendarFormat: CalendarFormat.twoWeeks,
                          firstDay: DateTime.now(),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: state.selectedDay,

                          availableGestures: AvailableGestures.all,
                          // eventLoader: (day,
                          selectedDayPredicate: (day) =>
                              isSameDay(state.selectedDay, day),
                          calendarStyle:
                              const CalendarStyle(isTodayHighlighted: true),
                          onDaySelected: (selectedDay, focusedDay) async {
                            focusedDay = focusedDay;
                            selectedDay = selectedDay;
                            log(selectedDay.day.toString());
                            List<GetServicemodel> bookedlist =
                                await getbookedservices(selectedDay);
                            // ignore: use_build_context_synchronously
                            context
                                .read<CalenderBloc>()
                                .add(GetBookedServicesEvent(bookedlist));
                            // ignore: use_build_context_synchronously
                            context
                                .read<CalenderBloc>()
                                .add(DaySelectingEvent(selectedDay));

                            log('${bookedlist.length.toString()}    gygfffd${state.selectedDay}');
                          },
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.15,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: 3 - state.bookedservices!.length == 0
                              ? Center(
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Slots Over for the date.\n kindly choose another date',
                                    style: fontstyle(),
                                  ),
                                )
                              : ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        context
                                            .read<CalenderBloc>()
                                            .add(SloteSelectingEvent('$index'));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: state.slot == null
                                              ? colorgreyshade
                                              : int.parse(state.slot!) == index
                                                  ? colorblue
                                                  : colorgreyshade,
                                        ),
                                        // height: size.height * 0.03,
                                        width: size.width / 3,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'slot ${index + 1}',
                                                      style: fontstyle(
                                                          color: colorwhite,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                '09:00 AM\n to\n 11.00 AM',
                                                style: fontstyle(
                                                  color: colorwhite,
                                                ),
                                              )
                                            ]),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                  itemCount: state.bookedservices!.isEmpty
                                      ? 3
                                      : 3 - state.bookedservices!.length),
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

Map<String, bool> slots = {
  '10:12': false,
  '01:03': true,
  '04:06': false,
};
