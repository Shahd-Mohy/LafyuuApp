import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/shop/offer/presentation/view/widgets/offer_banner_card.dart';
import 'package:lafayuu_app/features/shop/offer/presentation/view/widgets/offer_product_grid.dart';

class OfferViewBody extends StatelessWidget {
  const OfferViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        backgroundColor: backgroundWhite,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: textSecondary, size: 20.sp),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Offer Screen',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: textPrimary,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OfferBannerCard(),
            SizedBox(height: 16.h),
            const OfferProductGrid(),
          ],
        ),
      ),
    );
  }
}
