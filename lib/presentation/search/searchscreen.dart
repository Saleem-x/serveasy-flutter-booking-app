import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/search/search_bloc.dart';
import 'package:project2/buisnesslogic/cubit/choicechips/choicechips_cubit.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/presentation/search/productsearch.dart';
import 'package:project2/presentation/search/servicesearch.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

final _searchcontroller = TextEditingController();
Timer? _debounce;

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<ChoicechipsCubit, ChoicechipsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: colorwhite,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
                _searchcontroller.clear();
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: colorblack,
              ),
            ),
            title: TextFormField(
              controller: _searchcontroller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '  search..',
                hintStyle: fontstyle(),
              ),
              onChanged: (value) {
                if (state.isService == true) {
                  if (_debounce?.isActive ?? false) _debounce!.cancel();
                  _debounce = Timer(const Duration(milliseconds: 500), () {
                    context.read<SearchBloc>().add(
                        SearchEvent.serviceSearchEvent(
                            query: _searchcontroller.text));
                  });
                } else {
                  if (_debounce?.isActive ?? false) _debounce!.cancel();
                  _debounce = Timer(const Duration(milliseconds: 500), () {
                    context
                        .read<SearchBloc>()
                        .add(SearchEvent.productSearcEvent(query: value));
                  });
                }
              },
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  ChoiceChip(
                      selectedColor: colorblue,
                      onSelected: (value) {
                        _searchcontroller.clear();
                        context
                            .read<ChoicechipsCubit>()
                            .changesearchdivision('Service');
                      },
                      label: Text(
                        'Services',
                        style: fontstyle(color: colorwhite),
                      ),
                      selected: state.isService == true ? true : false),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  ChoiceChip(
                      selectedColor: colorblue,
                      onSelected: (value) {
                        _searchcontroller.clear();
                        context
                            .read<ChoicechipsCubit>()
                            .changesearchdivision('Products');
                      },
                      label: Text(
                        'Products',
                        style: fontstyle(color: colorwhite),
                      ),
                      selected: state.isService == true ? false : true)
                ]),
                Expanded(
                    child: state.isService == true
                        ? const ServiceSerch()
                        : const ProductSearch()),
              ],
            ),
          ),
        );
      },
    );
  }
}

/* 
Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  ChoiceChip(
                    selectedColor: colorblue,
                    onSelected: (value) {
                      context
                          .read<SearchBloc>()
                          .add(const Selectdivision(division: 'Services'));
                    },
                    label: Text(
                      'Services',
                      style: fontstyle(color: colorwhite),
                    ),
                    selected: true,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  ChoiceChip(
                    onSelected: (value) {
                      context
                          .read<SearchBloc>()
                          .add(const Selectdivision(division: 'Products'));
                    },
                    label: Text(
                      'Products',
                      style: fontstyle(color: colorwhite),
                    ),
                    selected: false,
                  )
                ]),
                Expanded(
                  child: SizedBox(
                    height: size.height,
                    child: GridView.builder(
                      // physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.7),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          // onTap: () => Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ProductView(
                          //       product: state.productlist![index],
                          //     ),
                          //   ),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Flexible(
                                flex: 2,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: colorgreyshade,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://i.pinimg.com/564x/60/70/cf/6070cf4c1d0ea5e10d1e3aafb7a6c8cf.jpg'),
                                          fit: BoxFit.cover)),
                                  // width: size.width / 2,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: decoration2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'e',
                                                style: fontstyle(
                                                    color: colorblack,
                                                    fontSize: 17),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '₹}',
                                                style: fontstyle(
                                                    color: colorblack,
                                                    fontSize: 17),
                                              ),
                                              Container(
                                                decoration: decoration3,
                                                child: const Center(
                                                    child: Icon(CupertinoIcons
                                                        .forward)),
                                              )
                                            ],
                                          ),
                                        ]),
                                  ),
                                ),
                              )
                            ]),
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
            ), */
