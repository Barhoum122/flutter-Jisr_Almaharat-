import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jisr_almharat/core/theming/colors.dart';

class CustomTagWithIconAndTitle extends StatelessWidget {
  const CustomTagWithIconAndTitle({
    super.key,
    required this.icon,
    required this.title,
    this.isFeatured = false,
    required this.styletitle,
    this.backgroundColor,
  });
  // ignore: prefer_typing_uninitialized_variables
  final IconData icon;
  final String title;
  final bool isFeatured;
  final TextStyle styletitle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6.w, top: 6.h),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: ColorsManager.backgroundColor,
            size: 15.w,
          ),
          SizedBox(width: 10.w),
          Text(title.capitalize!, style: styletitle)
        ],
      ),
    );
  }
}
