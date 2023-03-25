import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter101/global/color.dart';
import 'package:flutter101/global/text.dart';
import 'package:flutter101/register.dart';
import 'package:flutter101/widgets/appbar.dart';
import 'package:flutter101/widgets/button.dart';
import 'package:flutter101/widgets/textfield.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  void sayfayonlendir() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => regsiter_screen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

    return SafeArea(
        child: Scaffold(
      body: Container(
        color: maincolor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: maincolor,
                backgroundImage: AssetImage("assets/logo.png"),
                radius: 100,
              ),
              inputText(
                  50,
                  300,
                  silver,
                  Icons.mail_outline,
                  TextInputType.emailAddress,
                  false,
                  email,
                  "flutter101@gmail.com"),
              inputText(50, 300, silver, Icons.lock_outline_rounded,
                  TextInputType.name, true, pass, "Password"),
              customButton(50, 300, silver, sayfayonlendir, "Giriş"),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => regsiter_screen(),
                      ));
                },
                child: Text(
                  "Hesabınız yoksa hemen oluşturun",
                  style: TextStyle(
                      color: silver, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
