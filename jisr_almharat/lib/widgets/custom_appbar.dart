import 'package:flutter/material.dart';

import 'package:jisr_almharat/core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.leading,
    this.title,
    this.titleWidget,
    this.actions,
    this.backgroundColor,
    this.automaticallyImplyLeading = true,
    this.flexibleSpace,
  });

  final Widget? leading;
  final List<Widget>? actions;
  final String? title;
  final Widget? titleWidget;
  final Color? backgroundColor;
  final bool automaticallyImplyLeading;
  final Widget? flexibleSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight, // نفس ارتفاع AppBar
      child: AppBar(
        backgroundColor: backgroundColor ?? Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: leading,
        title: titleWidget ??
            (title != null
                ? Text(title!, style: TextStyles.font16DarkBold)
                : null),
        centerTitle: true,
        actions: actions,
        automaticallyImplyLeading: automaticallyImplyLeading,
        flexibleSpace: flexibleSpace,
      ),
    );
  }
}
