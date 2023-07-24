import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

class FeedBackWidget extends StatelessWidget {
  const FeedBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                color: colorlightshade,
                borderRadius: BorderRadius.circular(10)),
            // height: size.height / 5,
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      child: ClipOval(
                          child: Image(
                              image: AssetImage(
                                  'assets/images/profileimage.png'))),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'username',
                          style: fontstyle(),
                        ),
                        const Text('⭐⭐⭐⭐⭐'),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '7/1/2023',
                      style: fontstyle(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book''',
                  style: fontstyle(),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
