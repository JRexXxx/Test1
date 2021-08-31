import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: [
            Image.asset(
              "asset/image/logo.png",
              width: size.width * 0.2,
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Welcome to KMUTNB",
              style: TextStyle(
                fontSize: 32,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1490810194309-344b3661ba39?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1590&q=80"),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: SFornt,
                      ),
                      primary: PColor,
                      padding: EdgeInsets.all(20.0),
                      shape: StadiumBorder()),
                  child: Text('LOGIN'),
                  onPressed: () {
                    print("LOGIN!!");
                    Navigator.pushNamed(context,"login");
                  },
                ),
                SizedBox(
              height: size.height * 0.05,
            ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: SFornt,
                      ),
                      primary: PColor,
                      padding: EdgeInsets.all(20.0),
                      shape: StadiumBorder()),
                  child: Text('SIGNUP'),
                  onPressed: () {
                    print("SIGNUP!!");
                    Navigator.pushNamed(context,"register");
                  },
                ),
          ],
        ),
      ),
    );
  }
}
