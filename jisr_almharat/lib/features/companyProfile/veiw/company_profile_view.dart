import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/body.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

class CompanyProfileView extends StatelessWidget {
  const CompanyProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey, // Assign the key to the Scaffold
      // backgroundColor: ColorsManager.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomsAppBar(
          tatle: "Company Profile",
        ),
      ),

      body: const Body(),
    );
  }
}
