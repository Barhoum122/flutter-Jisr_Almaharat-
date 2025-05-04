import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/routing/routes.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/custom_Container_WiteTitleAndDescrption.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';

import 'package:jisr_almharat/features/jobDitalls/view/widgets/header.dart';
import 'package:jisr_almharat/widgets/app_text_button.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  Body({required this.jobDetails, super.key});
  late Job jobDetails;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Headerdetals(jobDetails: jobDetails),
          CustomContainerWiteTitleAndDescrption(
            tital: "Descrption",
            subtital:
                " We are looking for a talented Software Engineer to The text is divided into four parts, which include 12 chapters, a comprehensive appendix, and a glossary. Part I (Chapters 1–5) starts with a general discussion of the past, present, and future of the Internet, providing a detailed overview"
                "of e-commerce, its various categories, advantages, disadvantages, and successful",
            iconData: Icons.description,
            titalstyle: TextStyles.font16DarkBlueBold,
            subtitalstyle: TextStyles.font14GrayRegular,
          ),
          CustomContainerWiteTitleAndDescrption(
            tital: "Reguirements",
            subtital:
                " ● Strong background in DevOps methodologies \n ● Implement and advocate for SOLID principles\n ● Integrate with backend services and databases",
            iconData: Icons.check,
            titalstyle: TextStyles.font16DarkBlueBold,
            subtitalstyle: TextStyles.font14GrayRegular,
          ),
          CustomContainerWiteTitleAndDescrption(
            tital: "Salery",
            subtital: "  \$ 1200",
            iconData: Icons.money,
            titalstyle: TextStyles.font16DarkBlueBold,
            subtitalstyle: TextStyles.font14GrayRegular,
          ),
          CustomContainerWiteTitleAndDescrption(
            tital: "Deadline",
            subtital: "   ${jobDetails.applicationDeadline}",
            iconData: Icons.timer,
            titalstyle: TextStyles.font16DarkBlueBold,
            subtitalstyle: TextStyles.font14ReadRegular,
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: AppTextButton(
              buttonText: "Apply Now",
              textStyle: TextStyles.font16WhiteMedium,
              onPressed: () {
                context.pushNamed(Routes.applicationView,
                    arguments: jobDetails);
              },
              // verticalPadding: 15,
              // horizontalPadding: 3,
              buttonHeight: 60.h,
            ),
          )
        ],
      ),
    );
  }
}
