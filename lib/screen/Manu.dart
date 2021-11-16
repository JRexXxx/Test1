import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/config/constant.dart';
import 'package:test/screen/Adddata.dart';
import 'package:test/screen/Home.dart';
import 'package:test/screen/News.dart';
import 'package:test/screen/Profile.dart';
import 'package:test/screen/Str_1.dart';
import 'package:test/screen/TopBar.dart';
import 'package:test/screen/bord.dart';
import 'package:test/screen/edit_profile_page.dart';
import 'package:test/screen/hero.dart';
import 'package:test/screen/home_screen.dart';
import 'package:test/screen/str.dart';
import 'package:test/screen/viewdata.dart';


class Muna extends StatefulWidget {
  const Muna({ Key? key }) : super(key: key);

  @override
  _MunaState createState() => _MunaState();
}

class _MunaState extends State<Muna> {
  
  @override
  Widget build(BuildContext context) {
    
   return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Doat 2 TeamFinder",
          style: GoogleFonts.sniglet(fontSize: 20,fontWeight: FontWeight.w500),),
          leading: BackButton(),
        ),
        body: TabBarView(
          children: [
           News(),
           HomeScreen(),
          TopBar(),
           Profile(),
           
          ],
        ),
        bottomNavigationBar: Container(
          color: PColor,
          child: TabBar(
            labelStyle: GoogleFonts.sniglet(fontSize: 15,fontWeight: FontWeight.w500),
            indicatorColor: Colors.redAccent,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Chat",
                icon: Icon(Icons.messenger_sharp),
              ),
              Tab(
                icon: Icon(Icons.find_in_page),
                text: "Find Team",
              ),
              Tab(
                 icon: Icon(Icons.people_alt_sharp),
                text: "Profile",
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}