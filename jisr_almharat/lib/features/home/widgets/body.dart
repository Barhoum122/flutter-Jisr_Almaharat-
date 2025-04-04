import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/home/data/model/all_jobs_model.dart';
import 'package:jisr_almharat/features/home/widgets/cls_Category_List.dart';
import 'package:jisr_almharat/features/home/widgets/TrainingCard.dart';
import 'package:jisr_almharat/features/home/widgets/recent_Jobs_List.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  final List<Job> allJobs;
  final List<Training> allTraining;
  Body({super.key, required this.allJobs, required this.allTraining});
  @override
  Widget build(BuildContext context) {
    // var controller;

    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoryList(),
            SizedBox(height: 16.h),
            // Begine section for Featured Trining
            Text("Featured Jobs", style: TextStyles.font16DarkBold),
            SizedBox(height: 10.h),

            TrainingCard(
              allTraining: allTraining,
            ),
            SizedBox(height: 16.h),
            // End section for Featured Trining

            // Begine section for Recent Jobs
            Text("Recent Jobs", style: TextStyles.font16DarkBold),
            SizedBox(height: 10.h),
            // Show all Recent Jobs In home page
            RecentJobsList(
              allJobs: allJobs,
            ),

            // End section for Recent Jobs
          ],
        ),
      ),
    );
  }
}
