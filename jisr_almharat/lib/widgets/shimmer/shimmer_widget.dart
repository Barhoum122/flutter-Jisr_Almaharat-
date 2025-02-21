import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    required this.width,
    required this.height,
    this.radius,
    this.child,
    this.margin,
  });
  final double width;
  final double height;
  final double? radius;
  final Widget? child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mainBlue,
      highlightColor: const Color.fromARGB(255, 177, 176, 176),
      child: Container(
        width: width,
        height: height,
        margin: margin ?? EdgeInsets.zero,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(radius ?? 14.r),
          color: Get.theme.primaryColor.withOpacity(0.38),
        ),
        child: child,
      ),
    );
  }
}
