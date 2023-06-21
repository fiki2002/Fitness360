import 'package:fitness360/constants/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle baseStyle({
    final Color? color,
    final double? fontSize,
    final FontWeight? fontWeight,
  }) {
    return GoogleFonts.openSans(
      color: color ?? Palette.black,
      fontSize: fontSize ?? 20,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }
}
