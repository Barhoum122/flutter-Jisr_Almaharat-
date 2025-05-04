import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/routing/routes.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_cubit.dart';
import 'package:jisr_almharat/widgets/custom_chip.dart';

class CategoryList extends StatefulWidget {
  final List<Job> allJobs;
  final List<Training> allTraining;
  const CategoryList(
      {super.key, required this.allJobs, required this.allTraining});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
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
              onPressed: () {
                setState(() {
                  context.read<HomeCubit>().fetchJobInfo();
                });
              },
              isActive: true,
            ),
            CustomChip(
              title: "Jobs Finder ",
              onPressed: () {
                context.pushNamed(Routes.allJobs, arguments: widget.allJobs);

                setState(() {
                  context.read<HomeCubit>().fetchJobInfo();
                });
              },
            ),
            CustomChip(
              title: "Training Finder ",
              onPressed: () {
                setState(() {
                  context.read<HomeCubit>().fetchJobInfo();
                });
                context.pushNamed(Routes.allTraining,
                    arguments: widget.allTraining);
              },
            ),
          ],
        ),
      ),
    );
  }
}
