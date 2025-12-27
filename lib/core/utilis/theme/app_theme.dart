import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafayuu_app/core/utilis/constatns/const_colors.dart';
import 'package:lafayuu_app/core/utilis/theme/custom_themes/text_theme.dart';

class Apptheme {
  Apptheme._();

  static ThemeData lightTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,  
  scaffoldBackgroundColor: white,
  appBarTheme: AppBarTheme(
    backgroundColor: white,
    foregroundColor: darkBlueGray,
    elevation: 0,
  ),
  cardColor: white,
  colorScheme: ColorScheme.light(
    primary: primaryBlue,
    secondary: secondaryOrange,
    surface: white,
    background: white,
    onPrimary: white,
    onSecondary: white,
    onSurface: darkBlueGray,
    onBackground: darkBlueGray,
  ),
  textTheme: CustomTextTheme.lightTextTheme,  // Optional: Keep for backward compatibility, or replace with manual styles from text_styles.dart
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryBlue,
      foregroundColor: white,
      textStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: lightBorder),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: primaryBlue),
    ),
    labelStyle: TextStyle(color: mutedGray),
  ),
);
  static ThemeData darkTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,  
  brightness: Brightness.dark,
  primaryColor: primaryBlue,
  scaffoldBackgroundColor: darkBackground,
  appBarTheme: AppBarTheme(
    backgroundColor: darkBackground,
    foregroundColor: white,
    elevation: 0,
  ),
  cardColor: darkCard,
  colorScheme: ColorScheme.dark(
    primary: primaryBlue,
    secondary: secondaryOrange,
    surface: darkCard,
    background: darkBackground,
    onPrimary: white,
    onSecondary: white,
    onSurface: white,
    onBackground: white,
  ),
  textTheme: CustomTextTheme.darkTextTheme,  // Optional: Keep for backward compatibility, or replace with manual styles from text_styles.dart
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryBlue,
      foregroundColor: white,
      textStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: darkBorder),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: primaryBlue),
    ),
    labelStyle: TextStyle(color: lightGray),
  ),
);
}
