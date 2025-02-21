import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jisr_almharat/core/helpers/extensions.dart';

import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/widgets/custom_tag.dart';
import 'package:jisr_almharat/widgets/custom_tagwite_icon.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../../core/helpers/spacing.dart';

class Headerdetals extends StatelessWidget {
  const Headerdetals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      // Padding inside the card
      decoration: BoxDecoration(
        color: ColorsManager.mainBlue,
      ),
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/svgs/header_bg.svg', // Path to your SVG file
            fit: BoxFit.cover,
            height: 260.h,
          ),
          Column(
            // Align content to the left
            children: [
              // begin This secton header
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     // this class give me the round corner wite icons
              //     InkWell(
              //       child: const RoundedCornerWithIcons(
              //         doubleHorizontal: 8,
              //         doubleVertical: 5,
              //         icons: Icons.arrow_back_ios,
              //       ),
              //       onTap: () {
              //         context.pop();
              //       },
              //     ),
              //     Text(
              //       "Details",
              //       style: TextStyles.font16WhiteMediumWithHight,
              //     ),
              //     // this class give me the round corner wite icons
              //     RoundedCornerWithIcons(
              //       doubleHorizontal: 8,
              //       doubleVertical: 5,
              //       icons: Icons.shop_2,
              //     ),
              //   ],
              //   // End This secton header
              // ),
              verticalSpace(30),
              // Spacing between header and title
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    // Spacing between icon and title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyles.font24WhiteBold,
                            children: [
                              TextSpan(text: " UI/UX Designer"),
                              TextSpan(
                                text: '\n at ',
                                style: TextStyles.font16WhiteMediumWithHight,
                              ),
                              TextSpan(
                                text: ' ProSite ',
                                style: TextStyles.font16WhiteMediumWithHight,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpace(20),
              // Labels for Full Time and Part Time
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Full Time Label

                    CustomTag(
                      title: "On Site",
                      icon: Icons.sticky_note_2,
                      backgroundColor: Colors.white.withOpacity(0.15),
                      titleColor: ColorsManager.backgroundColor,
                    ),

                    CustomTag(
                      title: "Full Time ",
                      icon: Icons.work_history,
                      backgroundColor: Colors.white.withOpacity(0.15),
                      titleColor: ColorsManager.backgroundColor,
                    ),

                    CustomTag(
                      title: "Sana`a",
                      icon: Icons.location_history_sharp,
                      backgroundColor: Colors.white.withOpacity(0.15),
                      titleColor: ColorsManager.backgroundColor,
                    ),
                  ],
                ),
              ),
              verticalSpace(20),
              Center(
                child: Text(
                  "3 days left",
                  style: TextStyles.font14whiteBlueMedium,
                ),
              ),
              // verticalSpace(5),
            ],
          ),
        ],
      ),
    );
  }
}
