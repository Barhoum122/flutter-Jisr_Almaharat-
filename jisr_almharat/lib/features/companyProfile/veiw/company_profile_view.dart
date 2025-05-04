import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/body.dart';
import 'package:jisr_almharat/features/login/data/module/api_LoginResponse.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

class CompanyProfileView extends StatelessWidget {
  late ApiLoginresponse userData;

  CompanyProfileView({required this.userData, super.key});

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
          onPressedleft: () {
            context.pop();
          },
          iconData: Icons.edit,
          colorwithOpacity: Colors.white.withOpacity(0.15),
        ),
      ),

      body: Body(
        userData: userData,
      ),
    );
  }
}
