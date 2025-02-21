import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/helpers/spacing.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';

class CustomContainerWiteHeadeandlebil extends StatelessWidget {
  const CustomContainerWiteHeadeandlebil({
    super.key,
    required this.tital,
    required this.subtital,
    required this.iconData,
  });
  final String tital;
  final String subtital;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6, top: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        decoration: BoxDecoration(
            color: ColorsManager.whiteColor,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  iconData,
                  color: Colors.blue,
                ),
                horizontalSpace(8),
                Text(
                  tital,
                  style: TextStyles.font16DarkBlueBold,
                )
              ],
            ),
            verticalSpace(20),
            Text(
              // "  https://www.prosite.com",
              subtital,
              style: TextStyles.font13BlueRegular,
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
    ;
  }
}
