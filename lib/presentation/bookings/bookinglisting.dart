import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:project2/buisnesslogic/bloc/bookinglist/bookinglist_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/presentation/bookings/addreview.dart';

class BookingListingScreen extends StatelessWidget {
  const BookingListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BookinglistBloc>().add(const Getallbookedservices());
    });
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            // getuserbookedservices();
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Text(
          'Your bookings',
          style: fontstyle(color: colorwhite, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<BookinglistBloc, BookinglistState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: state.bookedservices == null
                ? Center(
                    child:
                        Lottie.asset('assets/animations/waitinganimation.json'),
                  )
                : state.bookedservices!.isEmpty
                    ? const Center(
                        child: Text(
                            textAlign: TextAlign.center,
                            "You Have'nt booke any service \nmake some bookings"),
                      )
                    : ListView.separated(
                        itemBuilder: (context, index) => Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.15,
                                    width: size.width - 30,
                                    decoration: BoxDecoration(
                                      // color: colorblue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: colorblue,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  offset: const Offset(0,
                                                      3), // changes the shadow position
                                                ),
                                              ],
                                              image: DecorationImage(
                                                  image: NetworkImage(state
                                                      .bookedservices![index]
                                                      .service
                                                      .imageUrl),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 2,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              // color: colorblue,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    state.bookedservices![index]
                                                        .service.name,
                                                    style: fontstyle(
                                                        color: colorblack,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const Divider(),
                                                  SizedBox(
                                                    height: size.height * 0.005,
                                                  ),
                                                  Text(
                                                    state.bookedservices![index]
                                                        .date,
                                                    style: fontstyle(
                                                      color: colorblack,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'slot:${state.bookedservices![index].timeslot} ',
                                                        style: fontstyle(
                                                            color: colorblack,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        state
                                                            .bookedservices![
                                                                index]
                                                            .status,
                                                        style: fontstyle(
                                                            color: colorblack,
                                                            fontSize: 15),
                                                      ),
                                                      CircleAvatar(
                                                        radius: 5,
                                                        backgroundColor: state
                                                                    .bookedservices![
                                                                        index]
                                                                    .status ==
                                                                'booked'
                                                            ? Colors.yellow
                                                            : Colors.green,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  state.bookedservices![index].status !=
                                          'booked'
                                      ? SizedBox(
                                          height: size.height * 0.06,
                                          child: InkWell(
                                            onTap: () {
                                              if (state.bookedservices![index]
                                                      .isreviewadded ==
                                                  false) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ReviewAddingScreen(
                                                      service:
                                                          state.bookedservices![
                                                              index],
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                    backgroundColor: Colors.red,
                                                    content: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.info,
                                                          color: colorwhite,
                                                        ),
                                                        Text(
                                                            'Review allready Submitted')
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }
                                            },
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    state.bookedservices![index]
                                                                .isreviewadded ==
                                                            false
                                                        ? 'Add a Review'
                                                        : 'Review submitted',
                                                    style: fontstyle(),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : const SizedBox()
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: size.height * 0.03),
                        itemCount: state.bookedservices!.length),
          );
        },
      ),
    );
  }
}
