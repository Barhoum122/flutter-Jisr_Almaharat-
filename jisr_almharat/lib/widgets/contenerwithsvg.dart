import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/widgets/custom_tagwite_icon.dart';

class Contenerwithsvg extends StatelessWidget {
  const Contenerwithsvg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 14, 130, 225), // لون خلفية احتياطي
          ),
          child: SvgPicture.asset(
            'assets/svgs/header_bg.svg', // ضع مسار الصورة الصحيحة
            fit: BoxFit.cover, // تغطية الخلفية بالكامل
            width: 250.w,
            height: 200.h,
          ),
        ),
        Column(
          // Align content to the left
          children: [
            // begin This secton header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // this class give me the round corner wite icons
                InkWell(
                  child: const CustomTagWiteIcon(
                    doubleHorizontal: 8,
                    doubleVertical: 5,
                    icons: Icons.arrow_back_ios,
                  ),
                  onTap: () {
                    context.pop();
                  },
                ),
                Text(
                  "Details",
                  style: TextStyles.font16WhiteMediumWithHight,
                ),
                // this class give me the round corner wite icons
                CustomTagWiteIcon(
                  doubleHorizontal: 8,
                  doubleVertical: 5,
                  icons: Icons.shop_2,
                ),
              ],
              // End This secton header
            ),
            // verticalSpace(20),
            // // Spacing between header and title
            // Container(
            //   margin: const EdgeInsets.only(left: 10.0),
            //   child: Row(
            //     children: [
            //       // Spacing between icon and title
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           RichText(
            //             text: TextSpan(
            //               style: TextStyles.font24WhiteBold,
            //               children: [
            //                 TextSpan(text: "Brand Manager"),
            //                 TextSpan(
            //                   text: '\nat ',
            //                   style: TextStyles.font16WhiteMediumWithHight,
            //                 ),
            //                 TextSpan(
            //                   text: 'ProSite ',
            //                   style: TextStyles.font16WhiteMediumWithHight,
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // verticalSpace(15),
            // // Labels for Full Time and Part Time
            // Padding(
            //   padding: const EdgeInsets.all(5.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       // Full Time Label

            //       // CustosmTag(
            //       //   title: "On Site",
            //       //   icon: Icons.sticky_note_2,
            //       //   backgroundColor: Colors.white.withOpacity(0.15),
            //       //   titleColor: ColorsManager.backgroundColor,
            //       // ),ss

            //       CustomTag(
            //         title: "Full Time ",
            //         icon: Icons.work_history,
            //         backgroundColor: Colors.white.withOpacity(0.15),
            //         titleColor: ColorsManager.backgroundColor,
            //       ),

            //       CustomTag(
            //         title: "Sana`a",
            //         icon: Icons.location_history_sharp,
            //         backgroundColor: Colors.white.withOpacity(0.15),
            //         titleColor: ColorsManager.backgroundColor,
            //       ),
            //     ],
            //   ),
            // ),
            // verticalSpace(15),
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
    );
  }
}
