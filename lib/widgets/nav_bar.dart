// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/constants/constants.dart';
import 'package:flutter_xpense_website/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return DesktopNavBar();
      },
      mobile: (context) {
        return SafeArea(child: MobileNavBar());
      },
    );
  }
}

Widget MobileNavBar() {
  return Container(
    height: 55,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
        Flexible(
          flex: 1,
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ),
        Flexible(
          flex: 5,
          child: Center(
            child: Image.asset(appLogo),
          ),
        ),
      ],
    ),
  );
}

Widget DesktopNavBar() {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(appLogo),
        Row(
          children: [
            NavBarTextButton(label: 'Features'),
            NavBarTextButton(label: 'About us'),
            NavBarTextButton(label: 'Pricing'),
            NavBarTextButton(label: 'Feedback'),
          ],
        ),
        NavBarElevatedButton()
      ],
    ),
  );
}

Widget NavBarElevatedButton() {
  return InkWell(
    focusColor: Colors.white70,
    onTap: (){},
    child: Container(
      height: 40,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(5.0)),
      child: const Center(
        child: Text(
          'Request a demo',
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ),
    ),
  );
}

Widget NavBarTextButton({required String label}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15),
    child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(color: Colors.black),
        )),
  );
}
