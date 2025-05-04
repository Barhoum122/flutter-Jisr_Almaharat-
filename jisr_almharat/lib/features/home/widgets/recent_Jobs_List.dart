import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/routing/routes.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/features/home/widgets/cls_recent_jobs.dart';

import '../../../widgets/app_text_button.dart';

class RecentJobsList extends StatelessWidget {
  final List<Job> allJobs;
  const RecentJobsList({super.key, required this.allJobs});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ...allJobs.take(3).map((job) {
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
        if (allJobs.length == 2)
          Center(
            child: AppTextButton(
              buttonText: "Get More",
              textStyle: TextStyles.font14whiteBlueMedium,
              onPressed: () {},
            ),
          )
      ]),
    );
  }
}
