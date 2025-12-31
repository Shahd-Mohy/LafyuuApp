import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class ProductSizeSelector extends StatefulWidget {
  const ProductSizeSelector({super.key});

  @override
  State<ProductSizeSelector> createState() => _ProductSizeSelectorState();
}

class _ProductSizeSelectorState extends State<ProductSizeSelector> {
  int _selectedSize = 0;
  final List<String> _sizes = ['6', '6.5', '7', '7.5', '8', '8.5'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Size',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: textPrimary,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 48.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _sizes.length,
              separatorBuilder: (_, __) => SizedBox(width: 16.w),
              itemBuilder: (context, index) {
                final isSelected = _selectedSize == index;
                return GestureDetector(
                  onTap: () => setState(() => _selectedSize = index),
                  child: Container(
                    width: 48.w,
                    decoration: BoxDecoration(
                      color: isSelected ? primaryBlue : backgroundWhite,
                      borderRadius: BorderRadius.circular(24.r),
                      border: Border.all(
                        color: isSelected ? primaryBlue : borderLight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _sizes[index],
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: isSelected ? textLight : textSecondary,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
