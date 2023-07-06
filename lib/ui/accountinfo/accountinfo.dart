import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
                  top: 50,
                  left: 50,
                  right: 50,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            child: ClipOval(
                                child: Image(
                              image: NetworkImage(
                                  'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000'),
                              fit: BoxFit.cover,
                            )),
                          ),
                          Positioned(
                            right: -15,
                            top: -5,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera,
                                size: 20,
                                color: colorwhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '@username',
                            style: fontstyle(color: colorwhite, fontSize: 17),
                          ),
                          Text(
                            'useremaial@gmail.com',
                            style: fontstyle(color: colorwhite, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ProfileScreenContainer(
              size: size,
              title: 'Address',
            ),
            ProfileScreenContainer(
              size: size,
              title: 'Orders',
            ),
            ProfileScreenContainer(
              size: size,
              title: 'Cart',
            ),
            ProfileScreenContainer(
              size: size,
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreenContainer extends StatelessWidget {
  final String title;
  const ProfileScreenContainer({
    super.key,
    required this.size,
    required this.title,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: size.height * 0.07,
        width: size.width - 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorblue),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: fontstyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: colorgreyshade),
              ),
              const Icon(CupertinoIcons.forward, color: colorblue)
            ],
          ),
        ),
      ),
    );
  }
}
