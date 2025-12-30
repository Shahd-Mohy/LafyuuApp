import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class CustomTextTheme {
  CustomTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // Headline styles (e.g., product titles, section headers)
    headlineLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: textPrimary,
    ),
    headlineMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: textPrimary,
    ),
    headlineSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: textPrimary,
    ),

    // Title styles (e.g., card titles)
    titleLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: textPrimary,
    ),
    titleMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: textPrimary,
    ),
    titleSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textPrimary,
    ),

    // Body styles (e.g., descriptions, buttons)
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: textPrimary,
    ),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: textSecondary,
    ),
    bodySmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: textSecondary,
    ),

    // Label styles (e.g., small labels, tags)
    labelLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textPrimary,
    ),
    labelMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: textSecondary,
    ),
    labelSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: textMuted,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    // Headline styles (e.g., product titles, section headers)
    headlineLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: darkText,
    ),
    headlineMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: darkText,
    ),
    headlineSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: darkText,
    ),

    // Title styles (e.g., card titles)
    titleLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: darkText,
    ),
    titleMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: darkText,
    ),
    titleSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: darkText,
    ),

    // Body styles (e.g., descriptions, buttons)
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: darkText,
    ),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: darkTextSecondary,
    ),
    bodySmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: darkTextSecondary,
    ),

    // Label styles (e.g., small labels, tags)
    labelLarge: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: primaryBlue,
    ),
    labelMedium: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: secondaryOrange,
    ),
    labelSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: darkTextSecondary,
    ),
  );
}
