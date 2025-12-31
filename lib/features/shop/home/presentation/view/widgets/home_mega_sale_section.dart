import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/routes/app_routes.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/shop/home/presentation/view/widgets/product_card.dart';

class HomeMegaSaleSection extends StatelessWidget {
  const HomeMegaSaleSection({super.key});

  final List<Map<String, dynamic>> _products = const [
    {
      'name': 'MS - Nike Air Max 270 React...',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
    {
      'name': 'MS - FLAVOR Women Leather...',
      'price': 199.99,
      'oldPrice': 399.99,
      'discount': 50,
    },
    {
      'name': 'MS - Nike Air Max 270 React...',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
    {
      'name': 'MS - FLAVOR Women Leather...',
      'price': 199.99,
      'oldPrice': 399.99,
      'discount': 50,
    },
    {
      'name': 'MS - Nike Air Max 270 React...',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
  ];

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
                'Mega Sale',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: textPrimary,
                  letterSpacing: 0.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: primaryBlue,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 238.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _products.length,
              separatorBuilder: (_, _) => SizedBox(width: 16.w),
              itemBuilder: (context, index) {
                final product = _products[index];
                return ProductCard(
                  name: product['name'],
                  assetImage: 'assets/images/product_test2.png',
                  price: product['price'],
                  oldPrice: product['oldPrice'],
                  discount: product['discount'],
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
