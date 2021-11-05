import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';
import 'package:test/index.dart';
import 'package:test/screen/dashboard.dart';
import 'package:test/screen/firebaselogin.dart';
import 'package:test/screen/firebaseregister.dart';
import 'package:test/screen/location.dart';
import 'package:test/screen/login.dart';
import 'package:test/screen/picture.dart';
import 'package:test/screen/store.dart';
//import 'package:test/screen/register.dart';
import 'package:test/screen/video.dart';
//import 'package:test/homepage.dart';

Future<void> main() async {
  //กำหนดค่าเริ่มต้นการเชื่อมต่อ Firebase
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

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
          "login":(context)=>FirebaseLogin(),
          "register":(context)=>FirebaseRegister(),
          "dashboard":(context)=>Dasboard(),
          "video":(context)=>Video(),
          "location":(context)=>Location(),
          "picture":(context)=>Picture(),
          "store":(context)=>Store(),
        },
      home: Index(),
    );
  }
}
