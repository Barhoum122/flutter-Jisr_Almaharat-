import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/networking/api_services.dart';
import 'package:jisr_almharat/core/routing/routes.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/myposted_training.dart';
import 'package:jisr_almharat/features/home/data/repo/home_repo.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_cubit.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_state.dart';
import 'package:jisr_almharat/features/home/widgets/alljob.dart';
import 'package:jisr_almharat/features/home/widgets/cls_recent_jobs.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';
import 'package:jisr_almharat/features/sign_up/data/models/sign_up_response.dart';
import 'package:jisr_almharat/widgets/custom_chip.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

class MypostedJob extends StatefulWidget {
  late ApiLoginresponse userData;
  MypostedJob({required this.userData, super.key});

  @override
  State<MypostedJob> createState() => _MypostedJobState();
}

class _MypostedJobState extends State<MypostedJob> {
  void initState() {
    super.initState();
    // tuserDatahis. = user;
    // final jobs = context.read<HomeCubit>().job;
    context.read<HomeCubit>().fetchJobInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomsAppBar(
          tatle: "Company Posting",
          onPressedleft: () {
            context.pop();
          },
          iconData: Icons.edit,
          colorwithOpacity: Colors.white.withOpacity(0.15),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: SingleChildScrollView(
            child: BlocBuilder<HomeCubit, DataState>(builder: (context, state) {
          if (state is DataInitial) {
            return const Center(child: Text('Waiting to load data...'));
          } else if (state is DataLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DataLoaded) {
            // التحقق من وجود state.data و message
            if (state.jobInfo.message.isEmpty) {
              return const Center(child: Text('No jobs available.'));
            }
            final allJobs = state.jobInfo.message;
            final allTraining = state.trainingInfo.message;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomChip(
                      title: "      Jobs     ",
                      onPressed: () {},
                      isActive: true,
                    ),
                    // CustomChip(
                    //   title: "     Jobs     ",
                    //   onPressed: () {},
                    //   isActive: false,
                    // ),

                    CustomChip(
                      title: "       Training      ",
                      onPressed: () {
                        final userD = widget.userData.fullName;
                        context.pushNamed(Routes.mypostedTraining,
                            arguments: userD);
                      },
                    ),
                  ],
                ),
                ...allJobs.take(100).map(
                  (job) {
                    if (job.organizationName
                        .contains(widget.userData.fullName as String)) {
                      return RecentJobs(
                        // imageUrl: 'assets/images/client-2.png',

                        imageUrl: job.image,
                        companyName: job.organizationName,
                        jobTitle: job.jopTitle,
                        location: 'Sulaymaniyah',
                        jobType: job.jopType,

                        descrption:
                            "This design is clean, modern, and matches the style of your example. Let me know if you need further assistance!",
                      );
                    } else {
                      Center(
                          child: Text(
                              'No jobs available For This ${job.organizationName}.'));
                    }
                    return Container();
                  },
                ),
              ],
            );
          }
          return Container();
        })),
      ),
    );
  }
}
