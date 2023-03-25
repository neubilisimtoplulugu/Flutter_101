import 'package:flutter/material.dart';

class anasayfa_screen extends StatefulWidget {
  const anasayfa_screen({super.key});

  @override
  State<anasayfa_screen> createState() => _anasayfa_screenState();
}

class _anasayfa_screenState extends State<anasayfa_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("anasayfa")),
    );
  }
}
