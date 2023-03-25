import 'package:flutter/material.dart';

class ucuncu_sayfa extends StatefulWidget {
  const ucuncu_sayfa({super.key});

  @override
  State<ucuncu_sayfa> createState() => _ucuncu_sayfaState();
}

class _ucuncu_sayfaState extends State<ucuncu_sayfa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("sayfa 3")),
    );
  }
}
