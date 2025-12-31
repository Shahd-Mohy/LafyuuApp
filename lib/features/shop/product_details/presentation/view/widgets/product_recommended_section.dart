import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/routes/app_routes.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/product_card.dart';

class ProductRecommendedSection extends StatelessWidget {
  const ProductRecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'You Might Also Like',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: textPrimary,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 238.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (_, _) => SizedBox(width: 16.w),
              itemBuilder: (context, index) {
                return ProductCard(
                  name: 'Nike Air Max 270 React...',
                  assetImage: 'assets/images/product_test2.png',
                  price: 299.43,
                  oldPrice: 534.33,
                  discount: 24,
                  onTap: () => context.push(AppRouter.kProductDetailsView),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
