import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/helpers/spacing.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';

class CustomAboutecompany extends StatelessWidget {
  const CustomAboutecompany({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.blue,
                ),
                horizontalSpace(8),
                Text(
                  "About Company",
                  style: TextStyles.font16DarkBlueBold,
                )
              ],
            ),
            verticalSpace(30),
            Text(
              "ProSite Yang and Dave Filo founded Yahoo! in April 1994. Yahoo! is one of the"
              "best known directories on the Web. A directory is a search service that classifies"
              "web sites into hierarchical subject-based structure. For example, Yahoo! includes"
              "categories such as art, business.",
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
