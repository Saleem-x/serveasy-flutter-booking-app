import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/constents/ecorations.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.15,
                  decoration: const BoxDecoration(
                      color: colorblue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          // Text(
                          //   'Serveasy',
                          //   style: fontstyle(
                          //       letterSpacing: 2,
                          //       color: colorwhite,
                          //       fontSize: 17),
                          // ),
                          // SizedBox(
                          //   height: size.height * 0.02,
                          // ),
                          // Text(
                          //   'We Provide You The Best Services',
                          //   style: fontstyleitalic(
                          //       fontSize: 17, color: colorwhite),
                          // ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: SizedBox(
                              height: size.height * 0.06,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(color: colorwhite),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: colorwhite),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  disabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: colorwhite),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: colorwhite),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                  ),
                                  hintText: '  Search..',
                                  hintStyle: fontstyle(color: colorlightshade),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          CupertinoIcons.back,
                          color: colorwhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: size.height,
                child: GridView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                                child: Icon(
                                                    CupertinoIcons.forward)),
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
        ),
      ),
    );
  }
}
