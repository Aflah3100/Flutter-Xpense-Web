// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/constants/constants.dart';
import 'package:flutter_xpense_website/utils/app_fonts.dart';
import 'package:flutter_xpense_website/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => DesktopContainer1(),
      mobile: (context) => Mobilecontainer1(),
    );
  }

  Widget Mobilecontainer1() {
    return SizedBox(
      child: Column(
        children: [
          //image
          SizedBox(
              // color: Colors.green,
              height: screenWidth! / 1.2,
              width: screenWidth! / 1.2,
              child: Image.asset(
                illuStration1,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Track Your \nExpenses to\nSave Money',
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
            'Helps you to organize your income and expenses',
            style: appTextStyle(
                fontColor: const Color.fromARGB(255, 189, 189, 189),
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 20,
          ),
          DemoElevatedButton(
            height: 50,
            width: screenWidth! / 2.5,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Web, iOs and Android',
            style: appTextStyle(
                fontColor: const Color.fromARGB(255, 189, 189, 189),
                fontSize: 16,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }

  Widget DesktopContainer1() {
    return Container(
      width: screenWidth,
      margin: EdgeInsets.symmetric(vertical: screenHeight! * 0.16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Track Your \nExpenses to\nSave Money',
                style: appTextStyle(
                    fontColor: Colors.black,
                    fontSize: screenWidth! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Helps you to organize your income and expenses',
                style: appTextStyle(
                    fontColor: const Color.fromARGB(255, 189, 189, 189),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  //Try-Free-Demo-Button
                  const DemoElevatedButton(
                    height: 45,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '- Web, iOs and Android',
                    style: appTextStyle(
                        fontColor: const Color.fromARGB(255, 189, 189, 189),
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  )
                ],
              )
            ],
          ),
          SizedBox(
              // color: Colors.green,
              height: screenHeight! * 0.5,
              child: Image.asset(
                illuStration1,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}

class DemoElevatedButton extends StatelessWidget {
  const DemoElevatedButton({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Try free demo',
              style: appTextStyle(
                  fontColor: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w100),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
