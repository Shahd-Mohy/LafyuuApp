import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundWhite,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Container(
        height: 46.h,
        decoration: BoxDecoration(
          color: backgroundWhite,
          border: Border.all(color: borderLight),
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search Product',
            hintStyle: TextStyle(
              fontSize: 12.sp,
              color: textSecondary,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Icon(Icons.search, color: primaryBlue, size: 24.sp),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 12.h),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_border, color: textSecondary, size: 24.sp),
          onPressed: () {},
        ),
        IconButton(
          icon: Badge(
            label: Text('2', style: TextStyle(fontSize: 10.sp)),
            child: Icon(
              Icons.notifications_none,
              color: textSecondary,
              size: 24.sp,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
