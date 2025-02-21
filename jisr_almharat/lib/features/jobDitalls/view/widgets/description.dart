import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/widgets/app_text_button.dart';

class JobDescriptionPage extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String location;
  final String jobType;
  final String postedDate;
  final String description;
  final List<String>? responsibilities;
  final List<String>? qualifications;
  final String salary;
  final String applyLink;

  const JobDescriptionPage({
    super.key,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.jobType,
    required this.postedDate,
    required this.description,
    this.responsibilities,
    this.qualifications,
    required this.salary,
    required this.applyLink,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            "  Job Description",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              description,
              style: TextStyles.font14GrayRegular,
            ),
          ),

          const SizedBox(height: 12),
          Text(
            "✔ Reguirements: ",
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text("• reload: 700 ms, reassemble ",
              style: TextStyles.font14GrayRegular),
          Text("• inherit the height of its parent container. ",
              style: TextStyles.font14GrayRegular),
          Text("• reload: 700 ms, reassemble ",
              style: TextStyles.font14GrayRegular),
          const SizedBox(height: 12),
          Text(
            "💰 Salary: $salary",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          // GetStartedButton()
          AppTextButton(
            buttonText: "Apply Now",
            textStyle: TextStyles.font16WhiteMedium,
            onPressed: () {},
            verticalPadding: 10.h,
          )
        ],
      ),
    );
  }
}
