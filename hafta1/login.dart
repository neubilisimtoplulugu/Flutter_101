import 'package:flutter/material.dart';

class ilk_ders extends StatefulWidget {
  const ilk_ders({super.key});

  @override
  State<ilk_ders> createState() => _ilk_dersState();
}

class _ilk_dersState extends State<ilk_ders> {
  TextEditingController ad =
      TextEditingController(); // textfieldleri kontrol etmek için
  TextEditingController soyad = TextEditingController();
  double bosdeger = 20; // bosluk fonksiyonuna sabit değer

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width /
        2; // MediaQuery.of(context).size ekranın yapının boyutunu almak için
    return Scaffold(
      body: Container(
          color: Colors.brown,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/595/79/png-transparent-dart-programming-language-flutter-object-oriented-programming-flutter-logo-class-fauna-bird.png"),
                ),
                bosluk(bosdeger),
                const Text(
                  "Flutter bosdeger1",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                bosluk(bosdeger),
                textfiled(context, genislik, ad),
                bosluk(bosdeger),
                textfiled(context, genislik, soyad),
                bosluk(50),
                Container(
                  width: genislik,
                  child: ElevatedButton(
                    onPressed: () {
                      print("${ad.text} \n ${soyad.text}");
                    },
                    child: Text("yazdır"),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Container textfiled(
      BuildContext context, double genislik, TextEditingController control) {
    return Container(
      width: genislik,
      color: Colors.white,
      child: TextField(
        controller: control,
      ),
    );
  }

  SizedBox bosluk(double uzunluk) {
    return SizedBox(
      height: uzunluk,
    );
  }
}
