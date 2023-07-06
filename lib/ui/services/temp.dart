// import 'package:flutter/material.dart';

// class BookingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Service Booking'),
//       ),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//         ),
//         itemCount: 30, // Assuming 30 days in a month
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               // Handle slot selection
//               print('Selected day ${index + 1}');
//             },
//             child: Container(
//               margin: EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.grey,
//                   width: 1.0,
//                 ),
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Day ${index + 1}',
//                     style: TextStyle(fontSize: 16.0),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Slot 1',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Slot 2'),
//                   Text('Slot 3'),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
