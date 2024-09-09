
import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/constants/constants.dart';
import 'package:flutter_xpense_website/utils/app_fonts.dart';
import 'package:flutter_xpense_website/utils/colors.dart';

class DesktopDisplayContainer3 extends StatelessWidget {
  const DesktopDisplayContainer3({
    super.key,
    required this.alignImageFirst,
    required this.title1,
    required this.title2,
    required this.assetImage,
  });

  final bool alignImageFirst;
  final String title1;
  final String title2;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (alignImageFirst) ...[
            SizedBox(
                height: screenHeight! * 0.5,
                child: Image.asset(
                  assetImage,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 100,
            ),
          ],
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title1,
              style: appTextStyle(
                  fontColor: const Color.fromARGB(255, 189, 189, 189),
                  fontSize: 17,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title2,
              style: appTextStyle(
                  fontColor: Colors.black,
                  fontSize: screenWidth! / 20,
                  fontWeight: FontWeight.bold,
                  height: 1.0),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.',
              style: appTextStyle(
                  fontColor: const Color.fromARGB(255, 189, 189, 189),
                  fontSize: 16,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryColor,
                ),
                iconAlignment: IconAlignment.end,
                label: Text(
                  'Learn more',
                  style: appTextStyle(
                      fontColor: AppColors.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w100),
                ))
          ]),
          if (!alignImageFirst) ...[
            const SizedBox(
              width: 100,
            ),
            SizedBox(
                // color: Colors.green,
                height: screenHeight! * 0.5,
                child: Image.asset(
                  assetImage,
                  fit: BoxFit.cover,
                ))
          ]
        ],
      ),
    );
  }
}
