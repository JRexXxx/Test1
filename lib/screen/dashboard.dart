//import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:test/model/activity.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({Key? key}) : super(key: key);

  @override
  _DasboardState createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    callActivity();
  }

  Future<void> callActivity() async {
    print("Hello World");
    // กำหนด path
    var url = Uri.parse("https://www.boredapi.com/api/activity");
    // กำหนด call api
    var response = await http.get(url);
    // การวาดหน้าจอใหม่
    setState(() {
      // การแปลงข้อมูล
      data = welcomeFromJson(response.body);
      // การเข้าถึงข้ออมูล
      print(data.activity);
      print(data.type);
      print(data.participants);
      print(data.price);
    });
    // การแสดง สถานะโค๊ด
    print(response.statusCode);
    // การแสดง ข้อมูล
    print(response.body);
  }

Future<void> logout ()async
{
  await FirebaseAuth.instance.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Menu Package"),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
              ),
              ListTile(
                title: Text("Video",style: TextStyle(fontSize: 24),),
                leading: Icon(Icons.video_call),
                onTap: (){
                  print("Menu Video");
                  Navigator.pushNamed(context,"video");
                },
              ),
              ListTile(
                title: Text("Image",style: TextStyle(fontSize: 24),),
                leading: Icon(Icons.image),
                onTap: (){
                  print("Menu Image");
                  Navigator.pushNamed(context,"picture");
                },
              ),
              ListTile(
                title: Text("Geolocation",style: TextStyle(fontSize: 24),),
                leading: Icon(Icons.location_city),
                onTap: (){
                  print("Menu location");
                  Navigator.pushNamed(context,"location");
                },
              ),
              ListTile(
                title: Text("Store",style: TextStyle(fontSize: 24),),
                leading: Icon(Icons.store),
                onTap: (){
                  print("Menu Store");
                  Navigator.pushNamed(context,"store");
                },
              ),
              ListTile(
                title: Text("Logout",style: TextStyle(fontSize: 24),),
                leading: Icon(Icons.logout_sharp),
                onTap: (){
                  print("Menu Logout");
                  logout();
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "login");
                  
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.api_sharp),
              SizedBox(width: 10),
              Text("Dashboard"),
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Text(data?.activity ?? "กำลังโหลด"),
              Text(data?.type ?? ""),
              Text('${data?.participants ?? ""}'),
              Text('${data?.price ?? ""}'),
            ],
          ),
        ),
      ),
    );
  }
}
