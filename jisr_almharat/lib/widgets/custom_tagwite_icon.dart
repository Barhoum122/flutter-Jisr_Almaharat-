import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/theming/colors.dart';

class CustomTagWiteIcon extends StatelessWidget {
  const CustomTagWiteIcon(
      {super.key,
      required this.doubleHorizontal,
      required this.doubleVertical,
      this.colorwithOpacity,
      this.icons});

  final double doubleHorizontal;
  final double doubleVertical;
  final Color? colorwithOpacity;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: doubleHorizontal.w, vertical: doubleVertical.h),
      decoration: BoxDecoration(
        color: colorwithOpacity ?? Colors.white.withOpacity(0.15),

        // Semi-transparent white
        borderRadius: BorderRadius.circular(6), // Rounded corners
      ),
      child: Icon(
        icons, // Work icon
        color: ColorsManager.lightBlue,
        size: 20,
      ),
    );
  }
}
