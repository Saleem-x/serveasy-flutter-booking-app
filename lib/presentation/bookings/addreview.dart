import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project2/buisnesslogic/bloc/bookinglist/bookinglist_bloc.dart';
import 'package:project2/buisnesslogic/bloc/review/reviewbloc_bloc.dart';
import 'package:project2/buisnesslogic/cubit/starratingcubit/starrating_cubit.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/domain/models/review/reviewmodel.dart';
import 'package:project2/domain/models/servisebookingmodel.dart';

class ReviewAddingScreen extends StatelessWidget {
  final GetServicemodel service;
  ReviewAddingScreen({super.key, required this.service});

  final _formkey = GlobalKey<FormState>();
  final _reviewcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorwhite,
        title: Text(
          'Add a Review',
          style: fontstyle(color: colorblack),
        ),
        leading: IconButton(
          onPressed: () {
            // log(service.id.toString());
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: colorblack,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: _formkey,
            child: BlocBuilder<StarratingCubit, StarratingState>(
              builder: (context, state) {
                return Column(
                  children: [
                    SizedBox(
                      child: Card(
                          child: Column(
                        children: [
                          SizedBox(
                            height: size.width / 2,
                            width: size.width - 30,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.network(
                                service.service.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width - 40,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      service.service.name,
                                      style: fontstyle(),
                                    ),
                                    Text(service.date),
                                    Text(service.address),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.06,
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => IconButton(
                                        onPressed: () {
                                          context
                                              .read<StarratingCubit>()
                                              .selectstar(index);
                                        },
                                        icon: Icon(
                                          state.rating < index
                                              ? Icons.star_border
                                              : Icons.star,
                                          color: Colors.orange,
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        width: 10,
                                      ),
                                  itemCount: 5),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextFormField(
                              controller: _reviewcontroller,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: colorblue,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                    width: 2.0,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                ),
                                hintText: 'type your review...',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter your review';
                                }
                                return null;
                              },
                              autofocus: false,
                              maxLines: null,
                              keyboardType: TextInputType.text,
                            ),
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      color: colorblue,
                      child: Text(
                        'Submit Review',
                        style: fontstyle(color: colorwhite),
                      ),
                      onPressed: () async {
                        if (_formkey.currentState!.validate()) {
                          log(service.id);
                          context.read<ReviewblocBloc>().add(
                                SendReview(
                                    review: ReviewModel(
                                        'username',
                                        _reviewcontroller.text,
                                        state.rating,
                                        DateFormat('yyyy-MM-dd')
                                            .format(DateTime.now()),
                                        'imageurl'),
                                    id: service.id),
                              );
                          await Future.delayed(
                              const Duration(microseconds: 100), () {
                            context
                                .read<BookinglistBloc>()
                                .add(const Getallbookedservices());
                            Navigator.pop(context);
                          });
                        }
                      },
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
