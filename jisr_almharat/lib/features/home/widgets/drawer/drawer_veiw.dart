import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jisr_almharat/core/helpers/extensions.dart';
import 'package:jisr_almharat/core/helpers/spacing.dart';
import 'package:jisr_almharat/core/routing/routes.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';
import 'package:jisr_almharat/features/home/widgets/drawer/widgets/cls_expansion_tile.dart';
import 'package:jisr_almharat/features/home/widgets/drawer/widgets/cls_list_tile.dart';
import 'package:jisr_almharat/widgets/custom_tagwite_icon.dart';

class DrawerVeiw extends StatelessWidget {
  const DrawerVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero, // Remove default padding
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: ColorsManager.mainBlue,
            // image: DecorationImage(
            //   image:SvgPicture.asset('icons/heart.svg', package: 'my_icons')
            // ),
          ),
          child: Stack(
            children: [
              // SVG Background
              SvgPicture.asset(
                'assets/svgs/header_bg.svg', // Path to your SVG file
                fit: BoxFit.cover, // Cover the entire container
              ),
              // Content on top of the SVG background
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: CustomTagWiteIcon(
                          doubleHorizontal: 8,
                          doubleVertical: 8,
                          icons: Icons.exit_to_app,
                        ),
                        onTap: () {
                          context.pop();
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  ListTile(
                    title: Text(
                      "Hi Ahmed",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white),
                    ),
                    subtitle: Text(
                      "ahmed@gmail.com",
                      style: TextStyles.font12whiteBlueRegular,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 6),
                    trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/prifile.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ClsExpansionTile(
          expansionTileText: 'Language',
          children: [
            ClsListTile(
              textTitle: 'English',
              leadingIcon: Icons.language_rounded,
              onPressed: () {
                //To_DO The Navageter
                // context.pop();
              },
            ),
            ClsListTile(
              textTitle: 'Arabic',
              leadingIcon: Icons.macro_off,
              onPressed: () {
                //To_DO The Navageter
                // context.pop();

                Navigator.pop(context);
              },
            ),
          ],
        ),
        ListTile(
          leading: const Icon(
            Icons.person_3_outlined,
            color: ColorsManager.mainBlue,
            size: 20,
          ),
          title: Text(
            'Profile',
            style: TextStyles.font14blacRegular,
          ),
          onTap: () {
            // Handle the tap
            context.pushReplacementNamed(
                Routes.companyProfileView); // Close the drawer
          },
        ),
        ListTile(
          leading: Icon(
            Icons.notification_important,
            color: ColorsManager.mainBlue,
            size: 20,
          ),
          title: Text(
            'Notifications',
            style: TextStyles.font14blacRegular,
          ),
          onTap: () {
            // Handle the tap
            Navigator.pop(context); // Close the drawer
          },
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: ColorsManager.mainBlue,
            size: 20,
          ),
          title: Text(
            'Settings',
            style: TextStyles.font14blacRegular,
          ),
          onTap: () {
            // Handle the tap
            Navigator.pop(context); // Close the drawer
          },
        ),
        verticalSpace(370),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.red,
            size: 20,
          ),
          title: const Text(
            'Logout',
            style: TextStyle(
              fontSize: 14,
              color: Colors.red,
            ),
          ),
          onTap: () {
            // Handle the tap
            Navigator.pop(context); // Close the drawer
          },
        ),
      ],
    );
  }
}
