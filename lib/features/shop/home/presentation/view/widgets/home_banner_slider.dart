import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/routes/app_routes.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({super.key});

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Countdown timer
  Duration _countdownDuration = const Duration(
    hours: 8,
    minutes: 34,
    seconds: 52,
  );
  Timer? _timer;

  final List<Map<String, dynamic>> _banners = [
    {
      'title': 'Super Flash Sale\n50% Off',
      'color': primaryBlue,
      'image': 'assets/images/product_test1.png',
    },
    {
      'title': 'New Arrivals\n30% Off',
      'color': secondaryOrange,
      'image': 'assets/images/product_test2.png',
    },
    {
      'title': 'Weekend Deal\n40% Off',
      'color': successGreen,
      'image': 'assets/images/product_test1.png',
    },
  ];

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdownDuration.inSeconds > 0) {
        setState(() {
          _countdownDuration = _countdownDuration - const Duration(seconds: 1);
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 206.h,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemCount: _banners.length,
            itemBuilder: (context, index) {
              return _buildBannerItem(_banners[index]);
            },
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _banners.length,
            (index) => _buildDotIndicator(index),
          ),
        ),
      ],
    );
  }

  Widget _buildBannerItem(Map<String, dynamic> banner) {
    return GestureDetector(
      onTap: () => context.push(AppRouter.kOfferView),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                banner['image'],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      (banner['color'] as Color).withValues(alpha: 0.9),
                      (banner['color'] as Color).withValues(alpha: 0.3),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24.w,
                top: 32.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      banner['title'],
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: textLight,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _buildCountdownTimer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCountdownTimer() {
    final hours = _countdownDuration.inHours.toString().padLeft(2, '0');
    final minutes = (_countdownDuration.inMinutes % 60).toString().padLeft(
      2,
      '0',
    );
    final seconds = (_countdownDuration.inSeconds % 60).toString().padLeft(
      2,
      '0',
    );

    return Row(
      children: [
        _buildTimeBox(hours),
        _buildTimeSeparator(),
        _buildTimeBox(minutes),
        _buildTimeSeparator(),
        _buildTimeBox(seconds),
      ],
    );
  }

  Widget _buildTimeBox(String value) {
    return Container(
      width: 42.w,
      height: 42.h,
      decoration: BoxDecoration(
        color: backgroundWhite,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Center(
        child: Text(
          value,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: textPrimary,
          ),
        ),
      ),
    );
  }

  Widget _buildTimeSeparator() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Text(
        ':',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: textLight,
        ),
      ),
    );
  }

  Widget _buildDotIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: _currentPage == index ? primaryBlue : borderLight,
        borderRadius: BorderRadius.circular(4.r),
      ),
    );
  }
}
