import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:jisr_almharat/core/theming/colors.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.title,
    this.isActive = false,
    required this.onPressed,
  });
  final String title;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.w),
      child: ActionChip(
        padding: EdgeInsets.all(6),
        label: Text(title),
        labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: isActive ? ColorsManager.whiteColor : ColorsManager.blackColor,
        ),
        elevation: 0.0,
        side: BorderSide(
            color: isActive
                ? ColorsManager.mainBlue
                : const Color.fromARGB(255, 144, 195, 237),
            width: 1.w),
        labelPadding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 15.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.r),
        ),
        onPressed: onPressed,
        backgroundColor:
            isActive ? ColorsManager.mainBlue : ColorsManager.backgroundColor,
      ),
    );
  }
}
