import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/bloc/calender/calender_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/booking.dart';
import 'package:project2/models/servicemodel.dart';
import 'package:project2/models/servisebookingmodel.dart';
import 'package:project2/presentation/services/booknow.dart';
import 'package:project2/presentation/services/widgets/slotselectionwidget.dart';
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
      List<int> bookedslots = await getavailableslots(DateTime.now());

      Future.delayed(const Duration(milliseconds: 100), () {
        context.read<CalenderBloc>().add(GetBookedServicesEvent(bookedlist));
        context.read<CalenderBloc>().add((GetBookedSlotsEvent(bookedslots)));
        context.read<CalenderBloc>().add(SloteSelectingEvent(null));
      });

      // log(bookedlist.length.toString());
    });
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              pinned: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: colorwhite,
                  )),
              backgroundColor: Colors.transparent,
              elevation: 0,
              expandedHeight: size.height / 1.5,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: size.height / 1.5,
                  decoration: BoxDecoration(
                    color: colorblue,
                    image: DecorationImage(
                        image: NetworkImage(service.imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: BlocBuilder<CalenderBloc, CalenderState>(
                builder: (context, state) {
                  return state.bookedservices == null
                      ? Center(
                          child: Lottie.asset(
                              'assets/animations/loadinganimation1.json'),
                        )
                      : Column(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          service.name,
                                          textWidthBasis: TextWidthBasis.parent,
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
                                          style:
                                              fontstyle(color: colorgreyshade),
                                        )
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
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
                                        if (state.slot != null) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BookNowScreen(
                                                  servicetobook:
                                                      ServiceBookingModel(
                                                          state.selectedDay,
                                                          user.uid,
                                                          email!,
                                                          '${state.slot!}',
                                                          email,
                                                          'requirments',
                                                          service,
                                                          DateTime.now()
                                                              .microsecondsSinceEpoch,
                                                          null),
                                                ),
                                              ));
                                        } else {
                                          ScaffoldMessenger.of(context)
                                            ..removeCurrentSnackBar()
                                            ..showSnackBar(SnackBar(
                                                backgroundColor: Colors.red,
                                                content: Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.info,
                                                      color: colorwhite,
                                                    ),
                                                    SizedBox(
                                                        width:
                                                            size.width * 0.02),
                                                    Text(
                                                      'Please Select a slot',
                                                      style: fontstyle(
                                                          color: colorwhite),
                                                    ),
                                                  ],
                                                )));
                                        }
                                      },
                                      child: Text(
                                        'Book Now',
                                        style: fontstyle(color: colorblack),
                                      ),
                                    ),
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
                            ListView(shrinkWrap: true, children: [
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
                                  calendarStyle: const CalendarStyle(
                                      isTodayHighlighted: true),
                                  onDaySelected:
                                      (selectedDay, focusedDay) async {
                                    focusedDay = focusedDay;
                                    selectedDay = selectedDay;
                                    log(selectedDay.day.toString());
                                    List<GetServicemodel> bookedlist =
                                        await getbookedservices(selectedDay);
                                    List<int> bookedslots =
                                        await getavailableslots(selectedDay);
                                    Future.delayed(
                                        const Duration(microseconds: 100), () {
                                      context.read<CalenderBloc>().add(
                                          GetBookedServicesEvent(bookedlist));
                                      context
                                          .read<CalenderBloc>()
                                          .add(DaySelectingEvent(selectedDay));
                                      context.read<CalenderBloc>().add(
                                          (GetBookedSlotsEvent(bookedslots)));
                                    });

                                    log('${bookedlist.length.toString()}gygfffd${state.selectedDay}');
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
                                      : SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: SlotSelectionWidget(
                                              size: size,
                                              bookedslots: state.bookedslots,
                                              selectedDay: state.selectedDay,
                                              slot: state.slot),
                                        ),
                                ),
                              ),
                            ]),
                          ],
                        );
                },
              ),
            ),
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

List<String> slotinfo = [
  'slot 1: 10:12',
  'slot 2: 01:03',
  'slot 3: 04:06',
];
