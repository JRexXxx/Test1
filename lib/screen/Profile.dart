import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
import 'package:test/config/constant.dart';
import 'package:test/screen/appbar_widget.dart';
import 'package:test/screen/button_widget.dart';
import 'package:test/screen/edit_profile_page.dart';
import 'package:test/screen/numbers_widget.dart';
import 'package:test/screen/profile_widget.dart';
import 'package:test/screen/user.dart';
import 'package:test/screen/user_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

Future<void> logout ()async
{
  await FirebaseAuth.instance.signOut();
}

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 50,),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(user),
          const SizedBox(
            height: 24,
          ),
          Center(
              child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: () {
                      logout();
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, "login");
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("logout".toUpperCase(),
                        style: GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500)),
                  ),),
          const SizedBox(
            height: 24,
          ),
          NumbersWidget(),
          const SizedBox(
            height: 24,
          ),
          buildAbout(user),
        ],
      ),
    );
  }

                    

  Widget buildName(Usert user) => Column(
        children: [
          Text(
            user.name,
            style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            user.email,
            style: GoogleFonts.sniglet(fontSize: 18,fontWeight: FontWeight.w500,color:Colors.grey,),
          ),
        ],
      );

/*Widget buildUpgradeButton() => ButtonWidget(
  text: 'Logout',
  onClicked: () {
    
  },

);*/

  Widget buildAbout(Usert user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              user.about,
              style: GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500,height: 1.4),
            ),
          ],
        ),
      );
}
