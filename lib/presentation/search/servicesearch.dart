import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/search/search_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';
import 'package:project2/presentation/services/servicesview.dart';

class ServiceSerch extends StatelessWidget {
  const ServiceSerch({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    context
        .read<SearchBloc>()
        .add(const SearchEvent.serviceSearchEvent(query: ''));
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.when(
          () => const Column(
            children: [],
          ),
          searchServiceState: (servicelist) => Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: size.height,
                  child: GridView.builder(
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: servicelist.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.7),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ServiceView(
                              service: servicelist[index],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Flexible(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: colorgreyshade,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              servicelist[index].imageUrl),
                                          fit: BoxFit.cover)),
                                  width: size.width / 2,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: size.height * 0.09,
                                  decoration: BoxDecoration(
                                    color: colorwhite,
                                    boxShadow: [insetboxshadow],
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  width: size.width / 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          servicelist[index].name,
                                          overflow: TextOverflow.ellipsis,
                                          style: fontstyle(
                                              color: colorblack, fontSize: 17),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '₹${servicelist[index].price.toString()}',
                                              style: fontstyle(
                                                  color: colorblack,
                                                  fontSize: 17),
                                            ),
                                            // Container(
                                            //   decoration: decoration3,
                                            //   child: const Center(
                                            //       child: Icon(
                                            //           CupertinoIcons.forward)),
                                            // )
                                            Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                    CupertinoIcons.forward),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
          productSearchState: (productlist) => const Center(
            child: Text('not-found'),
          ),
          searchNotFoundState: () => const Center(
            child: Text('not-found'),
          ),
        );
      },
    );
  }
}
