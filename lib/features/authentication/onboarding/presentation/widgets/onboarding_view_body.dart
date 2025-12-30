import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/common/widgets/buttons/primary_button.dart';
import 'package:lafayuu_app/core/routes/app_routes.dart';
import 'package:lafayuu_app/core/utils/constatns/const_assets.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/core/utils/constatns/text_styles.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<_OnboardingItem> _items = [
    _OnboardingItem(
      image: AppAssets.onboarding1,
      title: 'Beautiful eCommerce UI Kit',
      subtitle: 'The best eCommerce UI Kit for your online store',
    ),
    _OnboardingItem(
      image: AppAssets.onboarding2,
      title: 'Easy Shopping Experience',
      subtitle: 'Browse through thousands of products with ease',
    ),
    _OnboardingItem(
      image: AppAssets.onboarding3,
      title: 'Fast & Secure Delivery',
      subtitle: 'Get your orders delivered quickly and safely',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextPressed() {
    if (_currentPage == _items.length - 1) {
      context.go(AppRouter.kLoginView);
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => context.go(AppRouter.kLoginView),
                child: Text('Skip', style: AppStyles.skip),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemCount: _items.length,
              itemBuilder: (context, index) => _buildPage(_items[index]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _items.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  width: _currentPage == index ? 32.w : 8.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: _currentPage == index ? primaryBlue : borderLight,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: PrimaryButton(
              title: _currentPage == _items.length - 1 ? 'Get Started' : 'Next',
              onPressed: _onNextPressed,
            ),
          ),
          SizedBox(height: 32.h),
        ],
      ),
    );
  }

  Widget _buildPage(_OnboardingItem item) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(item.image, fit: BoxFit.contain),
          ),
          SizedBox(height: 16.h),
          Text(
            item.title,
            style: AppStyles.heading,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              item.subtitle,
              style: AppStyles.onboardingSubtitle,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

class _OnboardingItem {
  final String image;
  final String title;
  final String subtitle;

  _OnboardingItem({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
