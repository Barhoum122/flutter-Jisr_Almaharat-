import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/widgets/custom_chip.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      padding: EdgeInsets.only(left: 5.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomChip(
              title: "All",
              onPressed: () {},
              isActive: true,
            ),
            CustomChip(
              title: "Job Finder ",
              onPressed: () {},
            ),
            CustomChip(
              title: "Training Finder ",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
