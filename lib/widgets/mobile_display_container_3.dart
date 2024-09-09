import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/constants/constants.dart';
import 'package:flutter_xpense_website/utils/app_fonts.dart';

class MobileDisplayContainer3 extends StatelessWidget {
  const MobileDisplayContainer3({
    super.key,
    required this.title1,
    required this.title2,
    required this.assetImage,
  });

  final String title1;
  final String title2;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          SizedBox(
              height: screenWidth! / 1.2,
              width: screenWidth! / 1.2,
              child: Image.asset(
                assetImage,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title1,
            style: appTextStyle(
                fontColor: const Color.fromARGB(255, 189, 189, 189),
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title2,
            style: appTextStyle(
                fontColor: Colors.black,
                fontSize: screenWidth! / 10,
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.',
            style: appTextStyle(
                fontColor: const Color.fromARGB(255, 189, 189, 189),
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
