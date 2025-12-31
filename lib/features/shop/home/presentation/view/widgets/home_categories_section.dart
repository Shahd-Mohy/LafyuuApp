import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  final List<Map<String, dynamic>> _categories = const [
    {'icon': Icons.man, 'name': 'Man Shirt'},
    {'icon': Icons.checkroom, 'name': 'Dress'},
    {'icon': Icons.work_outline, 'name': 'Man Work'},
    {'icon': Icons.woman, 'name': 'Woman Bag'},
    {'icon': Icons.phone_android, 'name': 'Man Shoes'},
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
                'Category',
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
                  'More Category',
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
            height: 108.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              separatorBuilder: (_, __) => SizedBox(width: 12.w),
              itemBuilder: (context, index) {
                return _buildCategoryItem(_categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(Map<String, dynamic> category) {
    return Column(
      children: [
        Container(
          width: 70.w,
          height: 70.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderLight, width: 1),
          ),
          child: Icon(category['icon'], color: primaryBlue, size: 24.sp),
        ),
        SizedBox(height: 8.h),
        Text(
          category['name'],
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
