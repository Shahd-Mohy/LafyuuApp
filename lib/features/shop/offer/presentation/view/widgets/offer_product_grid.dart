import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/routes/app_routes.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class OfferProductGrid extends StatelessWidget {
  const OfferProductGrid({super.key});

  final List<Map<String, dynamic>> _products = const [
    {
      'name': 'Nike Air Max 270 React ENG',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
    {
      'name': 'Nike Air Max 270 React ENG',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
    {
      'name': 'Nike Air Max 270 React ENG',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
    {
      'name': 'Nike Air Max 270 React ENG',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
    {
      'name': 'Nike Air Max 270 React ENG',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
    {
      'name': 'Nike Air Max 270 React ENG',
      'price': 299.43,
      'oldPrice': 534.33,
      'discount': 24,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 13.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 0.7,
        ),
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return _buildProductCard(product, context);
        },
      ),
    );
  }

  Widget _buildProductCard(Map<String, dynamic> product, BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRouter.kProductDetailsView),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundWhite,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: borderLight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(5.r)),
                child: Image.asset(
                  'assets/images/product_test2.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product['name'],
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: textPrimary,
                        letterSpacing: 0.5,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '\$${product['price'].toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: primaryBlue,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${product['oldPrice'].toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: textSecondary,
                            decoration: TextDecoration.lineThrough,
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '${product['discount']}% Off',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: errorRed,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
