import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/body.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

import '../../../core/routing/routes.dart';

class CompanyProfileView extends StatelessWidget {
  const CompanyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      // key: scaffoldKey, // Assign the key to the Scaffold
      // backgroundColor: ColorsManager.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomsAppBar(
          tatle: "Company Profile",
          onPressed: () {
            context.pushReplacementNamed(Routes.homeView);
          },
        ),
      ),

      body: const Body(),
    );
  }
}
