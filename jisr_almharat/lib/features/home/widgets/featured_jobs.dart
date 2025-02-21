import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/theming/colors.dart';

import '../../../core/theming/styles.dart';

class FeaturedJob extends StatelessWidget {
  const FeaturedJob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Adds shadow to the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), // Rounded corners
      ),
      child: Container(
        // width: double.infinity, // Full width
        padding: const EdgeInsets.all(16), // Padding inside the card
        decoration: BoxDecoration(
          color: ColorsManager.mainBlue,
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // Align content to the left
          children: [
            const Column(
              children: [
                Icon(
                  Icons.margin, // Work icon
                  color: Color.fromARGB(255, 252, 246, 246),
                  size: 25,
                ),
                // SizedBox(height: 5.h),
              ],
            ),
            //, Title and Icon
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.logo_dev_outlined, // Work icon
                    color: Colors.white,
                    size: 30,
                  ),
                  // CustomAvatar(
                  //   imageUrl: "",
                  //   height: 50.h,
                  //   radius: 15.spMax,
                  // ),
                  SizedBox(height: 5.h),
                  const SizedBox(width: 5), // Spacing between icon and title
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ProSite', // Title
                        style: TextStyles.font14whiteBlueMedium,
                      ),
                      Text(
                        'October 9,2025', // Title
                        style: TextStyles.font12whiteBlueRegular,
                      ),
                    ],
                  ),

                  SizedBox(height: 5.h),
                ],
              ),
            ),
            const SizedBox(height: 16), // Spacing between title and labels
            Row(
              children: [
                const SizedBox(width: 10), // Spacing between icon and title
                Text(
                  'Software Engineer', // Title
                  style: TextStyles.font14whiteBlueMedium,
                ),
                SizedBox(height: 5.h),
              ],
            ),
            const SizedBox(height: 16), // Spacing between title and labels

            // Labels for Full Time and Part Time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Full Time Label
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    // Semi-transparent white
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_bag, // Work icon
                        color: Colors.white,
                        size: 14,
                      ),
                      Text(
                        '  Full Time',
                        style: TextStyles.font12whiteSmale,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    // Semi-transparent white
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_bag, // Work icon
                        color: Colors.white,
                        size: 14,
                      ),
                      Text(
                        '  Part Time',
                        style: TextStyles.font12whiteSmale,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    // Semi-transparent white
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_bag, // Work icon
                        color: Colors.white,
                        size: 14,
                      ),
                      Text(
                        '  Freelance ',
                        style: TextStyles.font12whiteSmale,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
