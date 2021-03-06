import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/config/constant.dart';
import 'package:test/screen/Manu.dart';
import 'package:test/screen/Manutest.dart';
import 'package:test/screen/dashboard.dart';

class FirebaseLogin extends StatefulWidget {
  const FirebaseLogin({Key? key}) : super(key: key);

  @override
  _FirebaseLoginState createState() => _FirebaseLoginState();
}

class _FirebaseLoginState extends State<FirebaseLogin> {
  var email, password;
  final formKey = GlobalKey<FormState>();

  Future<void> checkUser() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print("success");
        MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => Muna());
        Navigator.of(context).pushAndRemoveUntil(
            materialPageRoute, (Route<dynamic> route) => false);
      }).catchError((onError){
        print(onError);
      });
    } catch (e) {
      print(e);
    }
  }
final logo = 'https://logos-world.net/wp-content/uploads/2020/12/Dota-2-Logo.png';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: Text('Dota 2 TeamFinder',
      style: GoogleFonts.sniglet(fontSize: 20,fontWeight: FontWeight.w500),),
      leading: BackButton(),
    ),
      body: Form(
        key: formKey,
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.03,
                ),
                Image.network(logo),
                SizedBox(height: 20,),
                Text(
                  'Dota 2 Login',
                  style: GoogleFonts.sniglet(fontSize: 25,fontWeight: FontWeight.w500,color: PColor),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  width: size.width * 0.9,
                  child: TextFormField(
                    style: GoogleFonts.sniglet(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.alternate_email,
                        color: PColor,
                        size: size.height * 0.05,
                      ),
                      hintText: "Email",
                    ),
                    onSaved: (value) {
                      email = value!.trim();
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  width: size.width * 0.9,
                  child: TextFormField(
                    style: GoogleFonts.sniglet(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: PColor,
                        size: size.height * 0.05,
                      ),
                      hintText: "Password",
                    ),
                    onSaved: (value) {
                      password = value!.trim();
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.08,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: () {
                      formKey.currentState!.save();
                      print("login");
                      checkUser();
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("login".toUpperCase(),
                        style: GoogleFonts.sniglet(fontSize: 20,fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                /*Text(
                  'All rights reserved',
                  style: TextStyle(
                    fontSize: 16,
                    color: SColor,
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
