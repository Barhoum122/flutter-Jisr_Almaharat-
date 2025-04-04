import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';

class RecentJobs extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final String jobTitle;
  final String descrption;
  final String location;
  final String jobType;
  final String? date;

  const RecentJobs({
    super.key,
    required this.companyName,
    required this.jobTitle,
    required this.descrption,
    required this.location,
    required this.jobType,
    this.date,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: ColorsManager.whiteColor,
          elevation: 1, // Adds shadow to the card
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          // Margin around the card
          child: Padding(
            padding: const EdgeInsets.all(16),
            // Padding inside the card
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align content to the left
              children: [
                // Company Name and Date
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Space between company name and date
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27.0,
                              backgroundColor: ColorsManager.lightBlue,
                              // child: Image.asset(
                              //   imageUrl,
                              // ),
                              child: imageUrl == "http://127.0.0.1:8000"
                                  ? Image.asset('assets/images/client-4.png')
                                  : Image.network(
                                      imageUrl,
                                      height: 30,
                                      // width: double.infinity,
                                      fit: BoxFit.cover,
                                    )),

                          SizedBox(height: 5.h),
                          const SizedBox(width: 10),
                          // Spacing between icon and title
                          Text(
                            companyName, // Title
                            style: TextStyles.font16DarkBold,
                          ),
                          SizedBox(height: 5.h),
                        ],
                      ),
                    ),
                  ],
                ),
                // Spacing between company name and job title
                SizedBox(height: 8.h),
                // Job Title
                Text(jobTitle, style: TextStyles.font14blacRegular),
                // Spacing between job title and details
                SizedBox(height: 8.h),
                Text(descrption, style: TextStyles.font12GrayMedium),
                // Spacing between job title and details
                SizedBox(height: 12.h),
                // Labels for Full Time and Part Time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Full Time Label
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7),
                      decoration: BoxDecoration(
                        color: Color(0xFFD3D4DA).withOpacity(0.2),
                        // Semi-transparent white
                        borderRadius:
                            BorderRadius.circular(5), // Rounded corners
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shopping_bag, // Work icon
                            color: ColorsManager.mainBlue,
                            size: 12,
                          ),
                          Text(
                            jobType,
                            style: TextStyles.font12DarkBlueregular,
                          ),
                        ],
                      ),
                    ),
                    // location Time Label
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7),
                      decoration: BoxDecoration(
                        color: Color(0xFFD3D4DA).withOpacity(0.2),
                        // Semi-transparent white
                        borderRadius:
                            BorderRadius.circular(5), // Rounded corners
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_city_rounded, // Work icon
                            color: ColorsManager.mainBlue,
                            size: 12,
                          ),
                          Text(
                            location,
                            style: TextStyles.font12DarkBlueregular,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
