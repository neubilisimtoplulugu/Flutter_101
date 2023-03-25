import 'package:flutter/material.dart';

Widget inputText(
  double height,
  double width,
  Color colors,
  IconData icons,
  TextInputType inputType,
  bool gizli,
  TextEditingController controller,
  String hinttex,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(icons),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextField(
            keyboardType: inputType,
            obscureText: gizli,
            controller: controller,
            decoration: InputDecoration(
              hintText: hinttex,
              border: InputBorder.none,
            ),
          ))
        ],
      ),
    ),
  );
}
