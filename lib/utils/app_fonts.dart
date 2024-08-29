import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appTextStyle(
    {required Color fontColor,
    required double fontSize,
    required FontWeight fontWeight,
    double? height}) {
  return GoogleFonts.hindSiliguri(
      color: fontColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height);
}
