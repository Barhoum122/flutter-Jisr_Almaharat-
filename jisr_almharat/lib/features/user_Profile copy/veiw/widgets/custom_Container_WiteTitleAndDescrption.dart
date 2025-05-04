import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/helpers/spacing.dart';
import 'package:jisr_almharat/core/theming/colors.dart';

class CustomContainerWiteTitleAndDescrption extends StatelessWidget {
  const CustomContainerWiteTitleAndDescrption({
    super.key,
    required this.tital,
    required this.subtital,
    required this.iconData,
    required this.titalstyle,
    required this.subtitalstyle,
  });
  final String tital;
  final String subtital;
  final IconData iconData;
  final TextStyle titalstyle;
  final TextStyle subtitalstyle;
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
                  style: titalstyle,
                )
              ],
            ),
            verticalSpace(20),
            Text(
              // "  https://www.prosite.com",
              subtital,
              style: subtitalstyle,
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
    ;
  }
}
