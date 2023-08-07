import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/review/reviewbloc_bloc.dart';
import 'package:project2/buisnesslogic/cubit/reviewpagination/reviewpagination_cubit.dart';
import 'package:project2/constents/colors.dart';

class ReviewFullView extends StatefulWidget {
  const ReviewFullView({super.key});

  @override
  State<ReviewFullView> createState() => _ReviewFullViewState();
}

class _ReviewFullViewState extends State<ReviewFullView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    context.read<ReviewblocBloc>().add(const GetallReviews());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorwhite,
        title: Text(
          'Reviews',
          style: fontstyle(
            color: colorblack,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: colorblack,
          ),
        ),
      ),
      body: BlocBuilder<ReviewblocBloc, ReviewblocState>(
        builder: (context, state) {
          return state.when(
            (reviewlist) => reviewlist == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : reviewlist.isEmpty
                    ? const Center(
                        child: Text('No Reviews Available'),
                      )
                    : BlocBuilder<ReviewpaginationCubit, ReviewpaginationState>(
                        builder: (context, scroll) {
                          return ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: reviewlist.length + 1,
                            itemBuilder: (context, index) {
                              return index < reviewlist.length
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: colorlightshade,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        // height: size.height / 5,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20,
                                                      child: SizedBox.fromSize(
                                                        size: size,
                                                        child: ClipOval(
                                                          child: Image(
                                                            errorBuilder: (context,
                                                                    error,
                                                                    stackTrace) =>
                                                                const Image(
                                                                    image: AssetImage(
                                                                        'assets/images/profiletemp.jpg')),
                                                            image: NetworkImage(
                                                              reviewlist[index]
                                                                  .imageurl,
                                                            ),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.03,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          reviewlist[index]
                                                              .username,
                                                          style: fontstyle(),
                                                        ),
                                                        SizedBox(
                                                          height: size.height *
                                                              0.02,
                                                          child:
                                                              ListView.builder(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            shrinkWrap: true,
                                                            itemCount: 5,
                                                            itemBuilder:
                                                                (context,
                                                                        stars) =>
                                                                    Icon(
                                                              reviewlist[index]
                                                                              .starrating +
                                                                          1 <=
                                                                      stars
                                                                  ? Icons
                                                                      .star_outline
                                                                  : Icons.star,
                                                              color:
                                                                  Colors.orange,
                                                              size: 17,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    const Spacer(),
                                                    Text(
                                                      reviewlist[index].date,
                                                      style: fontstyle(),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  reviewlist[index].review,
                                                  style: fontstyle(),
                                                ),
                                              )
                                            ]),
                                      ),
                                    )
                                  : SizedBox(
                                      height: size.height * 0.06,
                                      child: Center(
                                        child: Text(
                                          'No More Reviews',
                                          style: fontstyle(),
                                        ),
                                      ));
                            },
                          );
                        },
                      ),
            loadingState: () => const Center(
                child: CircularProgressIndicator(
              color: colorblack,
            )),
            failedstate: () => const Center(
              child: Text('failed'),
            ),
            successState: () {
              return const Center(
                  child: CircularProgressIndicator(
                color: colorgreyshade,
              ));
            },
          );
        },
      ),
    );
  }
}
