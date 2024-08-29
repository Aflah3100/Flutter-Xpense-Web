import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/constants/constants.dart';
import 'package:flutter_xpense_website/pages/containers/container_1.dart';
import 'package:flutter_xpense_website/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [Navbar(), Container1()],
          ),
        ),
      ),
    );
  }
}
