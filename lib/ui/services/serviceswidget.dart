import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/services/servicesview.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: size.height / 2,
            decoration: BoxDecoration(
              color: colorblue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                          color: colorblue.shade300,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'service name',
                            style: fontstyle(color: colorwhite),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'From',
                            style: fontstyle(
                                color: colorwhite,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹999',
                            style: fontstyle(color: colorwhite, fontSize: 17),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  height: size.height * 0.18,
                  width: size.width / 1.4,
                  decoration: BoxDecoration(
                    color: colorwhite,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://thumbs.dreamstime.com/b/man-worker-car-wash-washing-s-alloy-wheels-48893850.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  textAlign: TextAlign.center,
                  '''is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                  style: fontstyle(color: colorwhite),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width / 2.5,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: const BorderSide(
                        color: colorwhite,
                        width: 2.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ServiceView(),
                          ));
                    },
                    child: Text(
                      'Book Now',
                      style: fontstyle(
                          color: textcolorwhite, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
