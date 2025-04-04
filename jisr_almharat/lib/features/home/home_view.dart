import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/features/home/data/model/all_jobs_model.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_cubit.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_state.dart';
import 'package:jisr_almharat/widgets/custom_appbar.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'widgets/body.dart';
import 'widgets/drawer/drawer_veiw.dart';

// import '../../widgets/custom_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    // جلب البيانات تلقائيًا عند فتح الصفحة
    context.read<HomeCubit>().fetchJobInfo();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey, // Assign the key to the Scaffold
        backgroundColor: ColorsManager.backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 16.w, bottom: 8.w, top: 8.w),
              child: InkWell(
                child: const Icon(
                  Icons.menu,
                  size: 30,
                  color: ColorsManager.mainBlue,
                ),
                onTap: () {
                  // Open the drawer using the Scaffold key
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
            title: "JISR AL-MHARAT",
            // actions: const [
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     children: [],
            //   )
            // ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: ColorsManager.whiteColor,
          elevation: 20,
          child: DrawerVeiw(),
        ),
        body: BlocBuilder<HomeCubit, DataState>(
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
              final allJobs = state.jobInfo.message;
              final allTraining = state.trainingInfo.message;

              return Body(
                allJobs: allJobs,
                allTraining: allTraining,
              );
            } else if (state is DataError) {
              return Center(child: Text('Error: ${state.message}'));
              //   return const Center(
              //       child: Text('No Internt available For load data...'));
            }
            return Container();
          },
        ),
      ), // child: const Body()),
    );
  }
}
