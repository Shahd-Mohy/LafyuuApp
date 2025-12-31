import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class ProductColorSelector extends StatefulWidget {
  const ProductColorSelector({super.key});

  @override
  State<ProductColorSelector> createState() => _ProductColorSelectorState();
}

class _ProductColorSelectorState extends State<ProductColorSelector> {
  int _selectedColor = 0;
  final List<Color> _colors = [
    const Color(0xFFFFC833),
    const Color(0xFF40BFFF),
    const Color(0xFFFB7181),
    const Color(0xFF53D1B6),
    const Color(0xFF223263),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Color',
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
              itemCount: _colors.length,
              separatorBuilder: (_, __) => SizedBox(width: 16.w),
              itemBuilder: (context, index) {
                final isSelected = _selectedColor == index;
                return GestureDetector(
                  onTap: () => setState(() => _selectedColor = index),
                  child: Container(
                    width: 48.w,
                    decoration: BoxDecoration(
                      color: _colors[index],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected ? primaryBlue : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: isSelected
                        ? Icon(Icons.check, color: textLight, size: 20.sp)
                        : null,
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
