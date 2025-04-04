import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/core/helpers/spacing.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/custom_abouteCompany.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/custom_Container_WiteTitleAndDescrption.dart';
import 'package:jisr_almharat/features/companyProfile/veiw/widgets/logo_and_title.dart';
import 'package:jisr_almharat/widgets/custom_chip.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoAndTitle(),
          verticalSpace(6),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6),
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.whiteColor,
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  CustomChip(
                    title: "     About us     ",
                    onPressed: () {},
                    isActive: true,
                  ),
                  // CustomChip(
                  //   title: "     Jobs     ",
                  //   onPressed: () {},
                  //   isActive: false,
                  // ),
                  CustomChip(
                    title: "      My Posted      ",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          // section Container About company
          CustomAboutecompany(),
          // section Container wibsite company
          CustomContainerWiteTitleAndDescrption(
            tital: "Website",
            subtital: "  https://www.prosite.com",
            iconData: Icons.location_on,
            titalstyle: TextStyles.font16DarkBlueBold,
            subtitalstyle: TextStyles.font13BlueRegular,
          ),
          CustomContainerWiteTitleAndDescrption(
            tital: "Locations",
            subtital: " Sana`a hada street",
            iconData: Icons.local_phone_outlined,
            titalstyle: TextStyles.font16DarkBlueBold,
            subtitalstyle: TextStyles.font13BlueRegular,
          ),
          CustomContainerWiteTitleAndDescrption(
            tital: "Calls",
            subtital: " + 77087787\n + 73087787",
            iconData: Icons.local_phone_outlined,
            titalstyle: TextStyles.font16DarkBlueBold,
            subtitalstyle: TextStyles.font13BlueRegular,
          ),
        ],
      ),
    );
  }
}
