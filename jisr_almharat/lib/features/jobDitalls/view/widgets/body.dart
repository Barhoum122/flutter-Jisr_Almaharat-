import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/theming/colors.dart';

import 'package:jisr_almharat/features/jobDitalls/view/widgets/header.dart';

import 'description.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: ColorsManager.mainBlue,
            ),
            // padding: EdgeInsets.only(top: 50.h),
            child: Headerdetals(),
          ),
          Container(
            margin: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: JobDescriptionPage(
              companyName: "ProSite",
              description:
                  "We are looking for a talented Software Engineer to The text is divided into four parts, which include 12 chapters, a comprehensive appendix, and a glossary. Part I (Chapters 1–5) starts with a general discussion of the past, present, and future of the Internet, providing a detailed overview"
                  "of e-commerce, its various categories, advantages, disadvantages, and successful"
                  "case examples. Web auctions and several segments of the service industries that"
                  "use e-commerce are explored. Part useuse e-commerce are explored. Part use e-commerce are explored. Part I use e-commerce are explored. Part I I also explains intranets, extranets, and electronic data interchange as three of the important infrastructure technologies that"
                  "support e-commerce",
              jobTitle: "Brand Manager",
              jobType: "Tecgnlogy",
              location: "Sana`a",
              postedDate: "2025.2.5",
              salary: "2000",
              applyLink: "www.prosite.com",
            ),
          ),
        ],
      ),
    );
  }
}
