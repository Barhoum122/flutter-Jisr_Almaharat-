import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';

import '../../../core/theming/styles.dart';
import '../../../widgets/custom_Tag_With_Icon_And_Title.dart';
import '../../../widgets/custom_tagwite_icon.dart';

class TrainingCard extends StatelessWidget {
  final List<Training> allTraining;
  const TrainingCard({super.key, required this.allTraining});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: allTraining.take(3).map((training) {
          return InkWell(
            onTap: () {
              // context.pushNamed(Routes.jobDetailsView, arguments: training);
            },
            child: Card(
              elevation: 4, // Adds shadow to the card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                // Rounded corners
              ),
              child: Container(
                width: 350.w,
                // width: double.infinity, // Full width
                padding: const EdgeInsets.all(16),
                // Padding inside the card
                decoration: BoxDecoration(
                  color: ColorsManager.mainBlue,
                  borderRadius: BorderRadius.circular(12),
                  // Rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // Align content to the left
                  children: [
                    const Column(
                      children: [
                        CustomTagWiteIcon(
                          doubleHorizontal: 8,
                          doubleVertical: 8,
                          icons: Icons.favorite_border,
                        ),
                      ],
                    ),
                    //, Title and Icon

                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22.0,
                            backgroundColor: Color.fromARGB(255, 240, 244, 252),
                            child: training.imageUrl == "http://127.0.0.1:8000"
                                ? Image.asset('assets/images/client-4.png')
                                : Image.network(
                                    training.imageUrl,
                                    height: 30,
                                    // width: double.infinity,
                                    fit: BoxFit.contain,
                                  ),
                          ),

                          const SizedBox(width: 5),
                          // Spacing between icon and title
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                training.organizationName, // Title
                                style: TextStyles.font16WhiteMedium,
                              ),
                              Text(
                                ' October 9,2025', // Title
                                style: TextStyles.font12whiteBlueRegular,
                              ),
                            ],
                          ),

                          SizedBox(height: 5.h),
                        ],
                      ),
                    ),
                    const SizedBox(
                        height: 10), // Spacing between title and labels
                    Row(
                      children: [
                        const SizedBox(
                            width: 10), // Spacing between icon and title
                        Text(
                          training.title, // Title
                          style: TextStyles.font14whiteBlueMedium,
                        ),
                        // SizedBox(height: 5.h),
                      ],
                    ),
                    const SizedBox(
                        height: 10), // Spacing between title and labels

                    // Labels for Full Time and Part Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Full Time Label
                        CustomTagWithIconAndTitle(
                          title: 'Free   ',
                          icon: Icons.shopping_bag,
                          styletitle: TextStyles.font12whiteBlueRegular,
                          backgroundColor: Colors.white.withOpacity(0.15),
                        ),
                        CustomTagWithIconAndTitle(
                          title: training.pattren,
                          icon: Icons.shopping_bag,
                          styletitle: TextStyles.font12whiteBlueRegular,
                          backgroundColor: Colors.white.withOpacity(0.15),
                        ),
                        CustomTagWithIconAndTitle(
                          title: 'Sana`a ',
                          icon: Icons.shopping_bag,
                          styletitle: TextStyles.font12whiteBlueRegular,
                          backgroundColor: Colors.white.withOpacity(0.15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
