import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../core/helpers/spacing.dart';

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: ColorsManager.mainBlue,
      ),
      // margin: const EdgeInsets.only(left: 10.0),
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/svgs/header_bg.svg', // Path to your SVG file
            fit: BoxFit.contain,
            height: 250.h,
            width: double.maxFinite,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                verticalSpace(33),
                CircleAvatar(
                  radius: 50.0,
                  // backgroundColor: ColorsManager.mainBlue,
                  // backgroundColor: const Color.fromARGB(255, 29, 110, 250),
                  child: Image.asset(
                    "assets/images/client-1.png",
                  ),
                ),
                verticalSpace(10),
                Text(
                  "ProSite",
                  style: TextStyles.font16WhiteMedium,
                ),
                verticalSpace(3),
                Text(
                  "technologies",
                  style: TextStyles.font12whiteSmale,
                ),
                // verticalSpace(1400),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
