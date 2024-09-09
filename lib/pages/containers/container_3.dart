// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/constants/constants.dart';

import 'package:flutter_xpense_website/widgets/desktop_display_container_3.dart';
import 'package:flutter_xpense_website/widgets/mobile_display_container_3.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => DesktopContainer3(),
      tablet: (context) => Mobilecontainer3(),
      mobile: (context) => Mobilecontainer3(),
    );
  }

  Widget Mobilecontainer3() {
    return SizedBox(
      child: Column(
        children: [
          MobileDisplayContainer3(
              title1: 'ALWAYS ONLINE',
              title2: 'Real-time\nsupport with cloud',
              assetImage: illustrator),
          const SizedBox(
            height: 30,
          ),
          MobileDisplayContainer3(
              title1: 'FREE SOME COST',
              title2: 'Save cost\nfor you and family',
              assetImage: illusStration2),
          const SizedBox(
            height: 30,
          ),
          MobileDisplayContainer3(
              title1: 'USE ANYTIME',
              title2: 'Use anytime when\n you need',
              assetImage: illusStration3)
        ],
      ),
    );
  }

  Widget DesktopContainer3() {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      width: double.maxFinite,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          DesktopDisplayContainer3(
            alignImageFirst: false,
            title1: 'ALWAYS ONLINE',
            title2: 'Real-time\nsupport\nwith cloud',
            assetImage: illustrator,
          ),
          DesktopDisplayContainer3(
            alignImageFirst: true,
            title1: 'FREE SOME COST',
            title2: 'Save cost\nfor you and\nfamily',
            assetImage: illusStration2,
          ),
          DesktopDisplayContainer3(
              alignImageFirst: false,
              title1: 'USE ANYTIME',
              title2: 'Use anytime\nwhen you\nneed',
              assetImage: illusStration3)
        ],
      ),
    );
  }
}
