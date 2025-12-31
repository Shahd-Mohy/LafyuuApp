import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final String? assetImage;
  final double price;
  final double? oldPrice;
  final int? discount;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.name,
    this.imageUrl,
    this.assetImage,
    required this.price,
    this.oldPrice,
    this.discount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 141.w,
        decoration: BoxDecoration(
          color: backgroundWhite,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: borderLight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 109.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: backgroundGray,
                borderRadius: BorderRadius.vertical(top: Radius.circular(5.r)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(5.r)),
                child: _buildImage(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: textPrimary,
                      letterSpacing: 0.5,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: primaryBlue,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      if (oldPrice != null)
                        Text(
                          '\$${oldPrice!.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: textSecondary,
                            decoration: TextDecoration.lineThrough,
                            letterSpacing: 0.5,
                          ),
                        ),
                      SizedBox(width: 8.w),
                      if (discount != null)
                        Text(
                          '$discount% Off',
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
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (assetImage != null && assetImage!.isNotEmpty) {
      return Image.asset(assetImage!, fit: BoxFit.cover);
    } else if (imageUrl != null && imageUrl!.isNotEmpty) {
      return Image.network(imageUrl!, fit: BoxFit.cover);
    }
    return Icon(Icons.image, size: 40.sp, color: textSecondary);
  }
}
