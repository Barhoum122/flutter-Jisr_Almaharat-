import 'package:flutter/material.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/company_profile_view.dart';
import 'package:jisr_almharat/features/home/data/model/all_jobs_model.dart';
import 'package:jisr_almharat/features/home/data/repo/home_repo.dart';
import 'package:jisr_almharat/features/home/logic/cubit/home_cubit.dart';
import 'package:jisr_almharat/features/home/widgets/recent_Jobs_List.dart';
import 'package:jisr_almharat/features/sign_up/ui/sign_up_screen.dart';
import 'package:jisr_almharat/widgets/contenerwithsvg.dart';

import '../../features/home/home_view.dart';
import '../../features/jobDitalls/view/home_jobDitalls.dart';
import '../../features/login/view/login_screen.dart';
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
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => homecubit,
                  child: HomeView(),
                ));

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
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
      case Routes.companyProfileView:
        return MaterialPageRoute(
          builder: (_) => CompanyProfileView(),
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