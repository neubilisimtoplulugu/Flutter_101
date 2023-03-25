import 'package:flutter/material.dart';

class ikinci_sayfa extends StatefulWidget {
  const ikinci_sayfa({super.key});

  @override
  State<ikinci_sayfa> createState() => _ikinci_sayfaState();
}

class _ikinci_sayfaState extends State<ikinci_sayfa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("sayfa 2")),
    );
  }
}
