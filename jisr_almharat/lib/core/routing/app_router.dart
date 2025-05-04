import 'package:flutter/material.dart';
import 'package:jisr_almharat/features/application/data/repos/application_Repo.dart';
import 'package:jisr_almharat/features/application/logic/cubit.dart';
import 'package:jisr_almharat/features/application/view/application_view.dart';
import 'package:jisr_almharat/features/application/view/application_viiew.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/company_profile_view.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/myposted_job.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/myposted_training.dart';
import 'package:jisr_almharat/features/home/data/model/training_jobs_model.dart';
import 'package:jisr_almharat/features/home/data/repo/home_repo.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_cubit.dart';
import 'package:jisr_almharat/features/home/widgets/all_Training.dart';
import 'package:jisr_almharat/features/home/widgets/alljob.dart';
import 'package:jisr_almharat/features/home/widgets/recent_Jobs_List.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';
import 'package:jisr_almharat/features/login/data/repos/login_Repository.dart';
import 'package:jisr_almharat/features/login/logic/cubit/login_cubit.dart';
import 'package:jisr_almharat/features/notification/logic/cubit/notificationCubit.dart';
import 'package:jisr_almharat/features/notification/notificationScreen.dart';
import 'package:jisr_almharat/features/notification/notification_screen.dart';
import 'package:jisr_almharat/features/sign_up/data/models/sign_up_response.dart';
import 'package:jisr_almharat/features/sign_up/ui/sign_up_screen.dart';
import 'package:jisr_almharat/features/user_Profile%20copy/veiw/User_profile_view.dart';
import 'package:jisr_almharat/widgets/contenerwithsvg.dart';

import '../../features/home/home_view.dart';
import '../../features/jobDitalls/view/home_jobDitalls.dart';
import '../../features/login/view/login_screen.dart';
import '../../features/notification/data/repo/notificationRepositoryImpl.dart';
import '../../features/onboardingScreen/on_boarding_screen.dart';
import '../networking/api_services.dart';
import 'routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // late HomeRepo repository;
    // late HomeCubit homecubit;
    late HomeRepo repository = HomeRepo(apiService: ApiService());
    late HomeCubit homecubit = HomeCubit(homeRepo: repository);
    //final arregment = settings.arguments;

    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeView:
        final userDatax = arguments as ApiLoginresponse;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => homecubit,
            child: HomeView(userData: userDatax),
          ),
        );
      case Routes.applicationView:
        final jobDetail = arguments as Job;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                ApplictionCubit(ApplicationRepository(ApiService())),
            child: ApplicationView(jobDetails: jobDetail),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => LoginCubit(
                    LoginRepository(
                      ApiService(),
                    ),
                  ),
                  child: LoginScreen(),
                ));

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );

      case Routes.jobDetailsView:
        final jobDetails = arguments as Job;
        return MaterialPageRoute(
          builder: (_) => HomeJobditalls(jobDetails: jobDetails),
        );
      case Routes.contenerwithsvg:
        return MaterialPageRoute(
          builder: (_) => Contenerwithsvg(),
        );
      case Routes.notificationScreen:
        final userProfile = arguments as ApiLoginresponse;

        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => NotificationCubit(
                      repository:
                          NotificationRepositoryImpl(apiService: ApiService()),
                      userId: userProfile.message!.email ?? '')
                    ..loadNotifications(),
                  child: NotificationScreen(
                    userId: userProfile.fullName!,
                  ),
                ));
      // return MaterialPageRoute(
      //   builder: (_) => NotificationScreen(
      //     userId: name!,
      //   ),
      // );
      case Routes.companyProfileView:
        final userProfile = arguments as ApiLoginresponse;
        return MaterialPageRoute(
          builder: (_) => CompanyProfileView(
            userData: userProfile,
          ),
        );
      case Routes.userProfileView:
        final userProfile = arguments as ApiLoginresponse;
        return MaterialPageRoute(
          builder: (_) => UserProfileView(
            userData: userProfile,
          ),
        );

      case Routes.mypostedTraining:
        final userData = arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => homecubit,
            child: MypostedTraining(
              userData: userData,
            ),
          ),
        );
      case Routes.allJobs:
        final jobs = arguments as List<Job>;
        return MaterialPageRoute(
          builder: (_) => AllJobs(
            allJobs: jobs,
          ),
        );
      case Routes.allTraining:
        final allTraining = arguments as List<Training>;
        return MaterialPageRoute(
          builder: (_) => AllTraining(
            allTraining: allTraining,
          ),
        );

      case Routes.mypostedjob:
        final userDatax = arguments as ApiLoginresponse;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => homecubit,
            child: MypostedJob(
              userData: userDatax,
            ),
          ),
        );
      default:
        return null;
    }
  }
}





  // case Routes.homeScreen:
  //       return MaterialPageRoute(
  //         builder: (_) => BlocProvider(
  //           create: (context) => HomeCubit(getIt())..getSpecializations(),
  //           child: const HomeScreen(),
  //         ),
  //       );