// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/constants/constants.dart';
import 'package:flutter_xpense_website/utils/app_fonts.dart';
import 'package:flutter_xpense_website/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => DesktopContainer2(),
      mobile: (context) => MobileContainer2(),
      tablet: (context) => TabletContainer2(),
    );
  }

  Widget DesktopContainer2() {
    return Container(
      width: double.infinity,
      height: 900,
      decoration: const BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(height: 500, child: Image.asset(vector2)),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(vector1),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(dashBoard))),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: screenWidth,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: screenWidth! * 0.05),
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageContainer(
                  imageAsset: facebook,
                ),
                ImageContainer(
                  imageAsset: google,
                ),
                ImageContainer(imageAsset: cocaCola),
                ImageContainer(imageAsset: linkedIn),
                ImageContainer(imageAsset: samsung)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget TabletContainer2() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    width: double.infinity,
    decoration: const BoxDecoration(color: AppColors.primaryColor),
    child: Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(height: 400, child: Image.asset(vector2)),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(height: 400, child: Image.asset(vector1)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(dashBoard))),
            )
          ],
        ),
        Container(
          width: screenWidth,
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: screenWidth! * 0.05),
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ImageContainer(
                imageAsset: facebook,
              ),
              const SizedBox(
                width: 30,
              ),
              ImageContainer(
                imageAsset: google,
              ),
              const SizedBox(
                width: 30,
              ),
              ImageContainer(imageAsset: cocaCola),
              const SizedBox(
                width: 30,
              ),
              ImageContainer(imageAsset: linkedIn),
              const SizedBox(
                width: 30,
              ),
              ImageContainer(imageAsset: samsung),
              const SizedBox(
                width: 30,
              ),
              // Image.asset(google),
              // Image.asset(cocaCola),
              // Image.asset(linkedIn),
              // Image.asset(samsung)
            ],
          ),
        )
      ],
    ),
  );
}

Widget MobileContainer2() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    width: double.maxFinite,
    child: Column(
      children: [
        //Container-1
        Container(
          decoration: const BoxDecoration(color: AppColors.primaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 20, right: 20, left: 20, bottom: 0),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(dashBoard), fit: BoxFit.contain)),
                ),
              )
            ],
          ),
        ),
        //Container-2

        Container(
          height: 120,
          width: screenWidth,
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ImageContainer(
                imageAsset: facebook,
              ),
              const SizedBox(
                width: 20,
              ),
              ImageContainer(
                imageAsset: google,
              ),
              const SizedBox(
                width: 20,
              ),
              ImageContainer(imageAsset: cocaCola),
              const SizedBox(
                width: 20,
              ),
              ImageContainer(imageAsset: linkedIn),
              const SizedBox(
                width: 20,
              ),
              ImageContainer(imageAsset: samsung)
            ],
          ),
        )
      ],
    ),
  );
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.imageAsset});
  final String imageAsset;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 40,
      child: Image.asset(
        imageAsset,
        fit: BoxFit.contain,
      ),
    );
  }
}
