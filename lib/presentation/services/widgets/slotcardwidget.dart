import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class SlotCardWidget extends StatelessWidget {
  const SlotCardWidget({
    super.key,
    required this.size,
    required this.slot,
    required this.color,
    required this.fromtime,
    required this.endtime,
  });

  final Size size;
  final int slot;
  final Color color;
  final String fromtime;
  final String endtime;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        // height: size.height * 0.03,
        width: size.width / 3,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'slot $slot',
                  style:
                      fontstyle(color: colorwhite, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            '$fromtime\n to\n $endtime',
            style: fontstyle(
              color: colorwhite,
            ),
          )
        ]),
      ),
    );
  }
}
