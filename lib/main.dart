import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';
import 'package:test/index.dart';
import 'package:test/screen/dashboard.dart';
import 'package:test/screen/location.dart';
import 'package:test/screen/login.dart';
import 'package:test/screen/picture.dart';
import 'package:test/screen/register.dart';
import 'package:test/screen/video.dart';
//import 'package:test/homepage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KMUTNB",
      theme: ThemeData(
        primaryColor: PColor,
        secondaryHeaderColor: SColor),
        routes: {
          "login":(context)=>Login(),
          "register":(context)=>Register(),
          "dashboard":(context)=>Dasboard(),
          "video":(context)=>Video(),
          "location":(context)=>Location(),
          "picture":(context)=>Picture(),
        },
      home: Index(),
    );
  }
}
