import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/home_app_bar.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/home_banner_slider.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/home_categories_section.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/home_flash_sale_section.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/home_mega_sale_section.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/home_bottom_nav_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeBannerSlider(),
            SizedBox(height: 16.h),
            const HomeCategoriesSection(),
            SizedBox(height: 24.h),
            const HomeFlashSaleSection(),
            SizedBox(height: 24.h),
            const HomeMegaSaleSection(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(
        currentIndex: _currentNavIndex,
        onTap: (index) => setState(() => _currentNavIndex = index),
      ),
    );
  }
}
