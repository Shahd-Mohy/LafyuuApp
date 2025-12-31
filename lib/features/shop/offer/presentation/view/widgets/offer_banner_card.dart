import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class OfferBannerCard extends StatefulWidget {
  const OfferBannerCard({super.key});

  @override
  State<OfferBannerCard> createState() => _OfferBannerCardState();
}

class _OfferBannerCardState extends State<OfferBannerCard> {
  Duration _countdownDuration = const Duration(
    hours: 8,
    minutes: 34,
    seconds: 52,
  );
  Timer? _timer;

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
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      height: 206.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.r),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/product_test1.png', fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    primaryBlue.withValues(alpha: 0.9),
                    primaryBlue.withValues(alpha: 0.3),
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
                    'Super Flash Sale\n50% Off',
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
}
