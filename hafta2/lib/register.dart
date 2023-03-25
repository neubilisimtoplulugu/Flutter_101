import 'package:flutter/material.dart';
import 'package:flutter101/widgets/appbar.dart';

import 'global/color.dart';
import 'global/text.dart';

class regsiter_screen extends StatefulWidget {
  const regsiter_screen({super.key});

  @override
  State<regsiter_screen> createState() => _regsiter_screenState();
}

class _regsiter_screenState extends State<regsiter_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customAppbar(
          false, Colors.blueAccent, "Flutter102", Icons.share, () {}),
    ));
  }
}
