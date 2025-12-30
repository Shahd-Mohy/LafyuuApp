import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

abstract class TextStyles {
  // Headline Styles
  static TextStyle headlineLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: textPrimary,
  );

  // Title Styles
  static TextStyle titleLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: textPrimary,
  );

  static TextStyle titleMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: textPrimary,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: textPrimary,
  );

  // Body Styles
  static TextStyle bodyLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: textPrimary,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: textSecondary,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: textSecondary,
  );

  // Label Styles
  static TextStyle labelLarge = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: textPrimary,
  );

  static TextStyle labelMedium = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: textSecondary,
  );

  static TextStyle labelSmall = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: textMuted,
  );

  // Button Styles
  static TextStyle buttonPrimary = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: textLight,
  );

  static TextStyle buttonSecondary = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: primaryBlue,
  );

  static TextStyle buttonOutline = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: primaryBlue,
  );

  // Input Field Styles
  static TextStyle inputText = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: textPrimary,
  );

  static TextStyle inputHint = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: textSecondary,
  );

  static TextStyle inputLabel = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: textPrimary,
  );

  static TextStyle inputError = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: errorRed,
  );

  // Link Styles
  static TextStyle linkPrimary = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: primaryBlue,
  );

  static TextStyle linkSecondary = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: primaryBlue,
  );

  // Caption Styles
  static TextStyle caption = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: textMuted,
  );

  static TextStyle overline = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: textMuted,
    letterSpacing: 1.5,
  );

  // Special Styles
  static TextStyle price = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: primaryBlue,
  );

  static TextStyle discount = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: errorRed,
  );

  static TextStyle success = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: successGreen,
  );

  static TextStyle warning = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: warningYellow,
  );
}
