import 'package:flutter/material.dart';

class ClsListTile extends StatelessWidget {
  const ClsListTile(
      {super.key,
      required this.textTitle,
      required this.leadingIcon,
      this.trailingIcon,
      required this.onPressed});

  final String? textTitle;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(textTitle ?? "Defulte"),
      leading: Icon(
        leadingIcon ?? Icons.ac_unit,
        size: 15,
      ),
      autofocus: true,
      dense: true,
      trailing: Icon(trailingIcon),
      onTap: onPressed ??
          () {
            // Update the state of the app

            // Then close the drawer
          },
    );
  }
}
