import 'package:flutter/material.dart';
import 'package:flutter101/global/color.dart';
import 'package:flutter101/global/text.dart';

AppBar customAppbar(bool leading, Color colors, String label, IconData icons,
    Function()? gonder) {
  return AppBar(
    automaticallyImplyLeading: leading,
    backgroundColor: colors,
    title: Row(
      children: [
        CircleAvatar(
          backgroundColor: colors,
          backgroundImage: AssetImage(logo),
        ),
        Text(label)
      ],
    ),
    actions: [IconButton(onPressed: gonder, icon: Icon(icons))],
  );
}
