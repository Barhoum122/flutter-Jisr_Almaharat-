import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/jobDitalls/view/widgets/body.dart';
import 'package:jisr_almharat/widgets/custom_appbar.dart';
import 'package:jisr_almharat/widgets/customs_appbar.dart';

class HomeJobditalls extends StatelessWidget {
  const HomeJobditalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey, // Assign the key to the Scaffold
      backgroundColor: ColorsManager.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomsAppBar(
          tatle: "Details",
          iconData: Icons.favorite_border,
          colorwithOpacity: Color.fromARGB(255, 73, 167, 244),
        ),
      ),

      body: const Body(),
    );
  }
}
