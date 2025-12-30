import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';


abstract class AppStyles {
  // Heading - 24sp Bold (Onboarding titles)
  static TextStyle heading = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: textPrimary,
    letterSpacing: 0.5,
  );

  // Title - 16sp Bold (Screen titles: Welcome to Lafyuu, Let's Get Started)
  static TextStyle title = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: textPrimary,
    letterSpacing: 0.5,
  );

  // Subtitle - 12sp Regular (Sign in to continue, Create a new account)
  static TextStyle subtitle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  // Button Text - 14sp Bold
  static TextStyle button = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: textLight,
    letterSpacing: 0.5,
  );

  // Input Text - 12sp Bold (when typing)
  static TextStyle inputText = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  // Input Hint - 12sp Regular
  static TextStyle inputHint = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  // Link Text - 12sp Bold (Register, Sign In, Forgot Password?)
  static TextStyle link = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: primaryBlue,
    letterSpacing: 0.5,
  );

  // Body Text - 12sp Regular (Don't have account?, have a account?)
  static TextStyle body = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  // OR Divider Text - 14sp Bold
  static TextStyle divider = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  // Skip Button - 14sp Bold
  static TextStyle skip = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  // Social Button Text - 14sp Bold
  static TextStyle socialButton = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: textSecondary,
    letterSpacing: 0.5,
  );

  // Onboarding Subtitle - 12sp Regular with line height
  static TextStyle onboardingSubtitle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: textSecondary,
    letterSpacing: 0.5,
    height: 1.8,
  );

  // Price - 14sp Bold Blue
  static TextStyle price = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: primaryBlue,
    letterSpacing: 0.5,
  );

  // Old Price - 10sp Regular with line through
  static TextStyle oldPrice = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: textSecondary,
    letterSpacing: 0.5,
    decoration: TextDecoration.lineThrough,
  );

  // Discount - 10sp Bold Red
  static TextStyle discount = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    color: errorRed,
    letterSpacing: 0.5,
  );

  // Product Title - 12sp Bold
  static TextStyle productTitle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: textPrimary,
    letterSpacing: 0.5,
  );

  // Category Title - 10sp Regular
  static TextStyle category = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: textSecondary,
    letterSpacing: 0.5,
  );
}
