import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/features/home/widgets/drawer/widgets/cls_expansion_tile.dart';
import 'package:jisr_almharat/features/home/widgets/drawer/widgets/cls_list_tile.dart';


class ListOfDrawer extends StatefulWidget {
  const ListOfDrawer({super.key});

  @override
  State<ListOfDrawer> createState() => _ListOfDrawerState();
}

class _ListOfDrawerState extends State<ListOfDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            0.0,
            28.0,
            0.0,
            0.0,
          ),
          child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: ColorsManager.mainBlue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Yassin School Services Student',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.white)
                          // style: TextStyles.font18WhiteMedium,
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
                        subtitle: const Text(
                          "Subtitle Hellw",
                          style: TextStyle(color: Colors.white),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 6),
                        trailing: const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/prifile.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                // _MoreExpansionTile(context),
                ClsExpansionTile(
                  expansionTileText: 'Section',
                  children: [
                    ClsListTile(
                      textTitle: 'Item1',
                      leadingIcon: Icons.macro_off,
                      onPressed: () {
                        //To_DO The Navageter
                        // context.pop();
                      },
                    ),
                    ClsListTile(
                      textTitle: 'Item2',
                      leadingIcon: Icons.macro_off,
                      onPressed: () {
                        //To_DO The Navageter
                        // context.pop();
                      },
                    ),
                    ClsListTile(
                      textTitle: 'Item3',
                      leadingIcon: Icons.macro_off,
                      onPressed: () {
                        //To_DO The Navageter
                        // context.pop();

                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                _ListTile(context),
              ]),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget _ListTile(BuildContext context) {
  return Column(
    children: [
      ClsListTile(
        textTitle: 'Business',
        leadingIcon: Icons.arrow_right,
        onPressed: () {
          //To_DO The Navageter
          // context.pop();
        },
      ),
      ClsListTile(
        textTitle: 'Atendence',
        leadingIcon: Icons.arrow_right,
        onPressed: () {
          //To_DO The Navageter
          // context.pop();
        },
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget _MoreExpansionTile(BuildContext context) {
  return ExpansionTile(
    title: const Text("More"),
    leading: const Icon(
      Icons.checklist,
      size: 15,
    ),
    childrenPadding: const EdgeInsets.all(5),
    dense: true,
    // backgroundColor: ColorsManager.lightGray,
    children: [
      ClsListTile(
        textTitle: 'Item1',
        leadingIcon: Icons.macro_off,
        onPressed: () {
          //To_DO The Navageter
          // context.pop();
        },
      ),
      ClsListTile(
        textTitle: 'Item2',
        leadingIcon: Icons.macro_off,
        onPressed: () {
          //To_DO The Navageter
          // context.pop();
        },
      ),
      ClsListTile(
        textTitle: 'Item3',
        leadingIcon: Icons.macro_off,
        onPressed: () {
          //To_DO The Navageter
          // context.pop();

          Navigator.pop(context);
        },
      ),
    ],
  );
}
