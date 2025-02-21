import 'package:flutter/material.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/company_profile_view.dart';
import 'package:jisr_almharat/widgets/contenerwithsvg.dart';

import '../../features/home/home_view.dart';
import '../../features/jobDitalls/view/home_jobDitalls.dart';
import '../../features/onboardingScreen/on_boarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name)
     {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
           builder: (_) => const OnBoardingScreen(),
        );
      case Routes.homeView:
        return MaterialPageRoute(
           builder: (_) => const HomeView(),
        );
      case Routes.jobDetailsView:
        return MaterialPageRoute(
           builder: (_) =>  HomeJobditalls(),
        );
      case Routes.contenerwithsvg:
        return MaterialPageRoute(
           builder: (_) =>  Contenerwithsvg(),
        );
      case Routes.companyProfileView:
        return MaterialPageRoute(
           builder: (_) =>  CompanyProfileView(),
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