import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/home/widgets/chips_list.dart';
import 'package:jisr_almharat/features/home/widgets/featured_jobs.dart';
import 'package:jisr_almharat/features/home/widgets/recent_jobs.dart';

import '../../../core/routing/routes.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller;
    return SingleChildScrollView(
      // controller: controller.homeScrollController,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 6.h),
            const ChipsList(),
            SizedBox(height: 16.h),

            Text("Featured Jobs", style: TextStyles.font16DarkBold),
            SizedBox(height: 10.h),

            const FeaturedJob(),

            SizedBox(height: 16.h),
            // This section for Recent Jobs
            Text("Recent Jobs", style: TextStyles.font16DarkBold),
            SizedBox(height: 10.h),
            InkWell(
              child: const RecentJobs(
                  imageUrl: 'assets/images/client-2.png',
                  companyName: 'ProSite',
                  jobTitle: 'UI/UX Programer',
                  location: 'Sulaymaniyah',
                  jobType: 'Part Time',
                  date: 'October 9, 2025',
                  descrption:
                      " This design is clean, modern, and matches the style of your example. Let me know if you need further assistance!  "),
              onTap: () {
                context.pushNamed(Routes.jobDetailsView);
              },
            ),
            const RecentJobs(
                imageUrl: 'assets/images/client-1.png',
                companyName: 'MSM',
                jobTitle: 'Ract Programer',
                location: 'Sulaymaniyah',
                jobType: 'Part Time',
                date: 'October 9, 2025',
                descrption:
                    "This design is clean, modern, and matches the style of your example. Let me know if you need further assistance!"),
            const RecentJobs(
                imageUrl: 'assets/images/client-2.png',
                companyName: 'Reddit',
                jobTitle: 'C#',
                location: 'Sulaymaniyah',
                jobType: 'Part Time',
                date: 'October 9, 2025',
                descrption:
                    "This design is clean, modern, and matches the style of your example. Let me know if you need further assistance!"),

            // const RecentJobs(),
          ],
        ),
      ),
    );
  }
}
