import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';
import 'package:test/index.dart';
import 'package:test/model/user_model.dart';
import 'package:test/screen/Bg.dart';
import 'package:test/screen/Manu.dart';
import 'package:test/screen/Manutest.dart';
import 'package:test/screen/Str_1.dart';
import 'package:test/screen/chat.dart';
import 'package:test/screen/chat_screen.dart';
import 'package:test/screen/dashboard.dart';
import 'package:test/screen/firebaselogin.dart';
import 'package:test/screen/firebaseregister.dart';
import 'package:test/screen/home_screen.dart';
import 'package:test/screen/location.dart';
import 'package:test/screen/login.dart';
import 'package:test/screen/picture.dart';
import 'package:test/screen/register.dart';
import 'package:test/screen/store.dart';
import 'package:test/screen/str.dart';
//import 'package:test/screen/register.dart';
import 'package:test/screen/video.dart';
//import 'package:test/homepage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //กำหนดค่าเริ่มต้นการเชื่อมต่อ Firebase
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(Myapp());
}

class Myapp extends StatelessWidget {

final User currentUser = User(
  id: 0,
  name: 'Jame',
  imageUrl: 'asset/image/nick-fury.jpg',
  isOnline: true,
);
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PColor,
        secondaryHeaderColor: SColor,
        dividerColor: Colors.black),
        routes: {
          "login":(context)=>FirebaseLogin(),
          "register":(context)=>FirebaseRegister(),
          "dashboard":(context)=>Dasboard(),
          "video":(context)=>Video(),
          "location":(context)=>Location(),
          "picture":(context)=>Picture(),
          "store":(context)=>Store(),
          "test":(context)=>BGPage(),
          "Str":(context)=>Str_1(),
          "Home":(context)=>Muna(),
          "mess":(context)=>Chat(user: this.currentUser),
          
        },
        title: "Dota 2",
      home: BGPage(),
      
    );
    
  }
 
}
