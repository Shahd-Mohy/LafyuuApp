import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/widgets/product_image_slider.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/widgets/product_info_section.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/widgets/product_size_selector.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/widgets/product_color_selector.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/widgets/product_specification_section.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/widgets/product_review_section.dart';
import 'package:lafayuu_app/features/shop/product_details/presentation/view/widgets/product_recommended_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

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
          'Nike Air Max 270 React ENG',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: textPrimary,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: textSecondary, size: 24.sp),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: textSecondary, size: 24.sp),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductImageSlider(),
            SizedBox(height: 16.h),
            const ProductInfoSection(),
            SizedBox(height: 24.h),
            const ProductSizeSelector(),
            SizedBox(height: 24.h),
            const ProductColorSelector(),
            SizedBox(height: 24.h),
            const ProductSpecificationSection(),
            SizedBox(height: 24.h),
            const ProductReviewSection(),
            SizedBox(height: 24.h),
            const ProductRecommendedSection(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: backgroundWhite,
        border: Border(top: BorderSide(color: borderLight, width: 1)),
      ),
      child: SizedBox(
        height: 57.h,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          child: Text(
            'Add To Cart',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: textLight,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
