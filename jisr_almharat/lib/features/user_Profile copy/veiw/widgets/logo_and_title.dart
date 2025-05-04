import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../core/helpers/spacing.dart';

class LogoAndTitle extends StatelessWidget {
  late ApiLoginresponse userData;

  LogoAndTitle({required this.userData, super.key});

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
                verticalSpace(40),
                const CircleAvatar(
                  radius: 44,
                  backgroundImage: AssetImage("assets/images/prifile.png"),
                ),
                verticalSpace(10),
                Text(
                  "${userData.fullName}",
                  style: TextStyles.font16WhiteMedium,
                ),
                verticalSpace(3),
                Text(
                  "  Technology",
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
