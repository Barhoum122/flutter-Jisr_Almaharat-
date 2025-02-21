import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jisr_almharat/widgets/custom_appbar.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'widgets/body.dart';
import 'widgets/drawer/drawer_veiw.dart';

// import '../../widgets/custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              child: Builder(
                builder: (context) => GestureDetector(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: InkWell(
                    child: const Icon(Icons.menu, size: 30),
                    onTap: () {
                      // Open the drawer using the Scaffold key
                      scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                ),
              ),
            ),
            title: "JISR AL-MHARAT",
          ),
        ),
        drawer: Drawer(
          backgroundColor: ColorsManager.whiteColor,
          elevation: 20,
          child: DrawerVeiw(),
        ),
        body: const Body(),
      ),
    );
  }
}
