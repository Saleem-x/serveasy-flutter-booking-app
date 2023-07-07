import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class BookNowScreen extends StatelessWidget {
  const BookNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String selectedOption = address[0];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Container(
                  height: size.height / 4,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectanglewavebg.png'),
                        fit: BoxFit.fill),
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
                Positioned(
                  left: 50,
                  right: 50,
                  bottom: -10,
                  child: Container(
                    height: size.height * 0.15,
                    width: size.width - 30,
                    decoration: BoxDecoration(
                      color: colorblue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorblue,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes the shadow position
                              ),
                            ],
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://thumbs.dreamstime.com/b/man-worker-car-wash-washing-s-alloy-wheels-48893850.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: colorblue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Column(children: [
                              Text(
                                'Mobile CarWash',
                                style: fontstyle(
                                    color: colorwhite,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Divider(),
                              Text(
                                'for booking please fill the below fields',
                                style: fontstyle(
                                  color: colorwhite,
                                  fontSize: 17,
                                ),
                              )
                            ]),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const BookingTextField(
              label: 'organizers name',
              isPass: false,
              type: TextInputType.name,
            ),
            const BookingTextField(
              label: 'phone',
              isPass: false,
              type: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: size.height * 0.07,
                width: size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: colorblue),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedOption),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          // value: selectedOption,
                          elevation: 0,
                          onChanged: (value) {},
                          items: [
                            DropdownMenuItem(
                              value: address[0],
                              child: Text(address[0]),
                            ),
                            DropdownMenuItem(
                              value: address[1],
                              child: Text(address[1]),
                            ),
                            DropdownMenuItem(
                              value: address[2],
                              child: Text(address[2]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const BookingTextField(
              label: 'additional requirements',
              isPass: false,
              type: TextInputType.text,
            ),
          ]),
        ),
      ),
    );
  }
}

class BookingTextField extends StatelessWidget {
  final String label;
  final bool isPass;
  final TextInputType type;
  const BookingTextField({
    super.key,
    required this.label,
    required this.isPass,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        keyboardType: type,
        obscureText: isPass,
        decoration: InputDecoration(
          label: Text(
            label,
            style: fontstyle(color: textcolorblue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: colorblue,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}

List<String> address = ['address1', 'address2', 'address3'];
