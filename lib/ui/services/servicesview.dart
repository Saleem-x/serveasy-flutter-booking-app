import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/models/servicemodel.dart';
import 'package:project2/ui/services/booknow.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ServiceView extends StatelessWidget {
  final ServiceModel service;
  const ServiceView({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final date = DateTime.now();
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
            SlidingUpPanel(
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BookNowScreen(),
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
                    height: size.height / 3,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 30 - date.day,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${months[date.month - 1]} ${date.day + index}',
                                  style: fontstyle(
                                    color: colorblack,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Slot 1',
                                  style: fontstyle(
                                    color: colorblack,
                                  ),
                                ),
                                Text(
                                  'Slot 2',
                                  style: fontstyle(
                                    color: colorblack,
                                  ),
                                ),
                                Text(
                                  'Slot 3',
                                  style: fontstyle(
                                    color: colorblack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
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
