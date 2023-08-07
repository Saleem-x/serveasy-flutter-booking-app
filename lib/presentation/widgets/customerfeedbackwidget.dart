import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/review/reviewbloc_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/presentation/review/reviewfull.dart';

class FeedBackWidget extends StatelessWidget {
  const FeedBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    context.read<ReviewblocBloc>().add(const GetallReviews());
    return BlocBuilder<ReviewblocBloc, ReviewblocState>(
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
                  : Column(
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              reviewlist.length >= 5 ? 5 : reviewlist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: colorlightshade,
                                    borderRadius: BorderRadius.circular(10)),
                                // height: size.height / 5,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
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
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  reviewlist[index].username,
                                                  style: fontstyle(),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.02,
                                                  child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    itemCount: 5,
                                                    itemBuilder:
                                                        (context, stars) =>
                                                            Icon(
                                                      reviewlist[index]
                                                                      .starrating +
                                                                  1 <=
                                                              stars
                                                          ? Icons.star_outline
                                                          : Icons.star,
                                                      color: Colors.orange,
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
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          reviewlist[index].review,
                                          style: fontstyle(),
                                        ),
                                      )
                                    ]),
                              ),
                            );
                          },
                        ),
                        reviewlist.length > 5
                            ? SizedBox(
                                height: size.height * 0.06,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ReviewFullView(),
                                        ));
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'view more',
                                        style: fontstyle(),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox()
                      ],
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
    );
  }
}
