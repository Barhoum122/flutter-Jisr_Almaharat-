import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_cubit.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_state.dart';
import 'package:jisr_almharat/features/home/widgets/cls_recent_jobs.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';
import 'package:jisr_almharat/widgets/custom_chip.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

class MypostedTraining extends StatefulWidget {
  final String userData;
  const MypostedTraining({super.key, required this.userData});
  @override
  State<MypostedTraining> createState() => _MypostedTrainingState();
}

class _MypostedTrainingState extends State<MypostedTraining> {
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
            // } else if (state is DataLoading) {
            //   return const Center(child: CircularProgressIndicator());
          } else if (state is DataLoaded) {
            // التحقق من وجود state.data و message
            if (state.trainingInfo.message.isEmpty) {
              return const Center(child: Text('No training available.'));
            }

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
                      onPressed: () {
                        context.pop();
                      },
                      isActive: false,
                    ),
                    // CustomChip(
                    //   title: "     Jobs     ",
                    //   onPressed: () {},
                    //   isActive: false,
                    // ),

                    CustomChip(
                      isActive: true,
                      title: "       Training      ",
                      onPressed: () {
                        // final userD = widget.userData.fullName;
                        // context.pushNamed(Routes.mypostedTraining,
                        //     arguments: userD);
                      },
                    ),
                  ],
                ),
                ...allTraining.take(100).map(
                  (training) {
                    if (training.organizationName.contains(widget.userData)) {
                      return RecentJobs(
                        // imageUrl: 'assets/images/client-2.png',

                        imageUrl: training.imageUrl,
                        companyName: training.organizationName,
                        jobTitle: training.title,
                        location: training.state,
                        jobType: training.pattren,

                        descrption:
                            "This design is clean, modern, and matches the style of your example. Let me know if you need further assistance!",
                      );
                    } else {
                      Center(
                          child: Text(
                              'No training available For  ${training.organizationName}.'));
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
