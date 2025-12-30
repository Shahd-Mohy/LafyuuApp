import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/routes/app_routes.dart';
import 'package:lafayuu_app/core/utils/theme/app_theme.dart';

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
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Lafayuu App',
          themeMode: ThemeMode.system,
          theme: Apptheme.lightTheme,
          darkTheme: Apptheme.darkTheme,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
