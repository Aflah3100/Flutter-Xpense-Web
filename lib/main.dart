import 'package:flutter/material.dart';
import 'package:flutter_xpense_website/pages/home_page.dart';
import 'package:flutter_xpense_website/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X-Pense',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: AppColors.primaryColor,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
