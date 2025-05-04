import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/widgets/custom_tagwite_icon.dart';

class CustomsAppBar extends StatelessWidget {
  const CustomsAppBar({
    super.key,
    required this.tatle,
    this.iconData,
    this.horizontalspace,
    this.colorwithOpacity,
    this.onPressedleft,
  });
  final String tatle;
  final IconData? iconData;
  final double? horizontalspace;
  final Color? colorwithOpacity;
  final void Function()? onPressedleft;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorsManager.mainBlue,
      ),
      padding: EdgeInsets.only(top: 40.h, left: 10.h, right: 10.h, bottom: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // this class give me the round corner wite icons
          InkWell(
            onTap: () {
              context.pop();
            },
            child: CustomTagWiteIcon(
              doubleHorizontal: 8,
              doubleVertical: 8,
              icons: Icons.arrow_back_ios,
            ),
          ),

          // horizontalSpace(80),
          Text(
            tatle,
            style: TextStyles.font16WhiteMedium,
          ),
          InkWell(
            onTap: onPressedleft ??
                () {
                  context.pop();
                },
            child: CustomTagWiteIcon(
              doubleHorizontal: 8,
              doubleVertical: 8,
              colorwithOpacity: colorwithOpacity ?? Colors.blue,
              icons: iconData,
            ),
          ),
        ],
        // End This secton header
      ),
    );
  }
}
