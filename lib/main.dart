import 'package:flutter/material.dart';
import 'package:lafayuu_app/core/utilis/theme/app_theme.dart';

void main() {
  runApp(const LafyuuApp());
}

class LafyuuApp extends StatelessWidget {
  const LafyuuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
    );
  }
}
