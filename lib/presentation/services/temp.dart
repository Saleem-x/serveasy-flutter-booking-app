// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final List<String> addresses = [
//     '123 Main Street',
//     '456 Elm Avenue',
//     '789 Oak Lane',
//     '321 Pine Road',
//     '987 Maple Court',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Address Selection'),
//         ),
//         body: Center(
//           child: AddressDropdown(addresses: addresses),
//         ),
//       ),
//     );
//   }
// }

// class AddressDropdown extends StatefulWidget {
//   final List<String> addresses;

//   AddressDropdown({required this.addresses});

//   @override
//   _AddressDropdownState createState() => _AddressDropdownState();
// }

// class _AddressDropdownState extends State<AddressDropdown> {
//   String selectedAddress = '';

//   @override
//   Widget build(BuildContext context) {
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
//               setState(() {
//                 selectedAddress = newValue!;
//               });
//             },
//             items:
//                 widget.addresses.map<DropdownMenuItem<String>>((String value) {
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

// ! slot system temp->

/* 
                    GridView.builder(
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
                    ), */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogDemo(),
    );
  }
}

class AlertDialogDemo extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog with List'),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: items.length,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(items[index]),
                  onTap: () {
                    // Add logic to handle list item selection
                    Navigator.of(context)
                        .pop(); // Close the dialog after selection
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog with List Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
