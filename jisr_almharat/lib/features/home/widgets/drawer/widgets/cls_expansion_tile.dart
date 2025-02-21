import 'package:flutter/material.dart';
import 'package:jisr_almharat/core/theming/colors.dart';
import 'package:jisr_almharat/core/theming/styles.dart';

class ClsExpansionTile extends StatelessWidget {
  final String expansionTileText;
  final IconData? leadingIcons;
  final List<Widget> children;

  const ClsExpansionTile(
      {super.key,
      required this.expansionTileText,
      this.leadingIcons,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(
          expansionTileText,
          style: TextStyles.font14blacRegular,
        ),
        leading: Icon(
          leadingIcons ?? Icons.language_rounded,
          size: 20,
          color: ColorsManager.mainBlue,
        ),
        childrenPadding: const EdgeInsets.all(5),
        dense: true,
        // backgroundColor: ColorsManager.lightGray,
        textColor: Colors.black,
        collapsedBackgroundColor: ColorsManager.lightBlue,
        children: children);
  }
}
