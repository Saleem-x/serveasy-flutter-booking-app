import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/widgets/appbarwidget.dart';
import 'package:project2/ui/widgets/customerfeedbackwidget.dart';
import 'package:project2/ui/widgets/serviceswidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar:
            PreferredSize(preferredSize: size / 5, child: const AppBArWidget()),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.locationDot,
                      size: 17,
                    ),
                    Text('Location')
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                      width: size.width - 20,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search..',
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
                          suffixIcon: const Icon(Icons.search),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'Services',
                      style: fontstyle(
                          fontSize: 17, color: colorgreyshade.shade500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: size.height * 0.25,
                  child: const SearvicesList(),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'products',
                      style: fontstyle(
                          fontSize: 17, color: colorgreyshade.shade500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: size.height * 0.25,
                  child: const SearvicesList(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'Feedbacks',
                      style: fontstyle(
                          fontSize: 17, color: colorgreyshade.shade500),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FeedBackWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
