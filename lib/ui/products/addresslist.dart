// import 'package:flutter/material.dart';

// class AddressSelectionWidget extends StatelessWidget {
//   const AddressSelectionWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String selectedAddress = '';

//     return Container(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Select an address for your order:',
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(height: 20),
//           DropdownButton<String>(
//             value: selectedAddress,
//             icon: Icon(Icons.arrow_downward),
//             iconSize: 24,
//             elevation: 16,
//             style: TextStyle(color: Colors.deepPurple),
//             underline: Container(
//               height: 2,
//               color: Colors.deepPurpleAccent,
//             ),
//             onChanged: (String? newValue) {
//               selectedAddress = newValue!;
//             },
//             items: addresslist.map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Selected Address: $selectedAddress',
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }

