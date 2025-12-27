import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';  // Add this import for responsive text
import 'package:lafayuu_app/core/utilis/theme/app_theme.dart';  // Assuming this is your theme file path

void main() {
  runApp(const LafyuuApp());
}

class LafyuuApp extends StatelessWidget {
  const LafyuuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(  
      designSize: const Size(375, 812),  
      minTextAdapt: true, 
      splitScreenMode: true,  
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: Apptheme.lightTheme,  
          darkTheme: Apptheme.darkTheme,  
          home: const Placeholder(), 
        );
      },
    );
  }
}