import 'package:flutter/material.dart';

Widget customButton(
    double height, double width, Color colors, Function()? ontap, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadius.all(Radius.circular(30))),
      child: InkWell(
        onTap: ontap,
        child: Center(child: Text(text)),
      ),
    ),
  );
}
