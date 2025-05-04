// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/widgets/custom_Tag_With_Icon_And_Title.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../../core/helpers/spacing.dart';

class Headerdetals extends StatelessWidget {
  Headerdetals({super.key, required this.jobDetails});
  late Job jobDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      // Padding inside the card
      height: 200,
      decoration: BoxDecoration(
        color: ColorsManager.mainBlue,
      ),
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/svgs/header_bg.svg',
            fit: BoxFit.cover,
          ),
          Column(
            // Align content to the left
            children: [
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
                              TextSpan(text: " ${jobDetails.jopTitle}"),
                              TextSpan(
                                text: '\n  at ',
                                style: TextStyles.font16WhiteMediumWithHight,
                              ),
                              TextSpan(
                                text: ' ${jobDetails.organizationName} ',
                                style: TextStyles.font16WhiteMedium,
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

                    CustomTagWithIconAndTitle(
                      title: "On Site",
                      icon: Icons.sticky_note_2,
                      backgroundColor: Colors.white.withOpacity(0.15),
                      styletitle: TextStyles.font12whiteSmale,
                    ),

                    CustomTagWithIconAndTitle(
                      title: "${jobDetails.jopType} ",
                      icon: Icons.work_history,
                      backgroundColor: Colors.white.withOpacity(0.15),
                      styletitle: TextStyles.font12whiteSmale,
                    ),

                    CustomTagWithIconAndTitle(
                      title: "Sana`a",
                      icon: Icons.location_history_sharp,
                      backgroundColor: Colors.white.withOpacity(0.15),
                      styletitle: TextStyles.font12whiteSmale,
                    ),
                  ],
                ),
              ),
              // verticalSpace(20),
              // Center(
              //   child: Text(
              //     "3 days left",
              //     style: TextStyles.font14whiteBlueMedium,
              //   ),
              // ),
              // verticalSpace(5),
            ],
          ),
        ],
      ),
    );
  }
}
