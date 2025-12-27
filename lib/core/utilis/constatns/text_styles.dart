import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafayuu_app/core/utilis/constatns/const_colors.dart';

abstract class TextStyles {
  static TextStyle headlineLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: darkBlueGray,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: darkBlueGray,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: darkBlueGray,
  );

  static TextStyle titleLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: darkBlueGray,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: darkBlueGray,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: mutedGray,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: darkBlueGray,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: mutedGray,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: mutedGray,
  );

  static TextStyle labelLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: primaryBlue,
  );

  static TextStyle labelMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: secondaryOrange,
  );

  static TextStyle labelSmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.normal,
    color: mutedGray,
  );

  static TextStyle buttonTextStyle = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: white,
  );

  static TextStyle hintTextStyle = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: mutedGray, // For light mode; for dark mode, use lightGray
  );

  static TextStyle notesTextStyle = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: mutedGray,
  );

  static TextStyle labelTextStyle = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: darkBlueGray,
  );
}
