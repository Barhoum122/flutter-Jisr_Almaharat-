import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/routing/routes.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/features/home/widgets/cls_recent_jobs.dart';
import 'package:jisr_almharat/features/home/widgets/recent_Jobs_List.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

// ignore: must_be_immutable
class AllJobs extends StatelessWidget {
  final List<Job> allJobs;
  AllJobs({required this.allJobs, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomsAppBar(
          tatle: "All Jobs",
          onPressedleft: () {
            context.pop();
          },
          iconData: Icons.search,
          colorwithOpacity: Colors.white.withOpacity(0.15),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...allJobs.take(100).map((job) {
                return InkWell(
                  onTap: () {
                    context.pushNamed(Routes.jobDetailsView, arguments: job);
                  },
                  child: RecentJobs(
                    // imageUrl: 'assets/images/client-2.png',

                    imageUrl: job.image,
                    companyName: job.organizationName,
                    jobTitle: job.jopTitle,
                    location: 'Sulaymaniyah',
                    jobType: job.jopType,

                    descrption:
                        "This design is clean, modern, and matches the style of your example. Let me know if you need further assistance!",
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
