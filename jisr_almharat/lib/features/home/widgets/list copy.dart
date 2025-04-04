import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_cubit.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_state.dart';
import 'package:jisr_almharat/features/home/widgets/cls_recent_jobs.dart';

import '../../../core/routing/routes.dart';

class RecentJobsListcopy extends StatefulWidget {
  const RecentJobsListcopy({super.key});

  @override
  State<RecentJobsListcopy> createState() => _RecentJobsListcopyState();
}

class _RecentJobsListcopyState extends State<RecentJobsListcopy> {
  @override
  void initState() {
    super.initState();
    // جلب البيانات تلقائيًا عند فتح الصفحة
    context.read<HomeCubit>().fetchJobInfo();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, DataState>(
      builder: (context, state) {
        if (state is DataInitial) {
          return const Center(child: Text('Waiting to load data...'));
        } else if (state is DataLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is DataLoaded) {
          // التحقق من وجود state.data و message
          if (state.jobInfo.message.isEmpty) {
            return const Center(child: Text('No jobs available.'));
          }
          final jobs = state.jobInfo.message; // قائمة الوظائف

          final jobWidgets = jobs.take(3).map((job) {
            return InkWell(
              focusColor: Colors.amber,
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
          }).toList();

          // عرض البيانات باستخدام Column
          return SingleChildScrollView(
            child: Column(
              children: jobWidgets,
            ),
          );
        } else if (state is DataError) {
          // return Center(child: Text('Error: ${state.message}'));
          return const Center(
              child: Text('No Internt available For load data...'));
        }
        return Container();
      },
    );
  }
}
