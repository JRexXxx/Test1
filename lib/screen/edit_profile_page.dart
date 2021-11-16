import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/config/constant.dart';
import 'package:test/screen/Manu.dart';
import 'package:test/screen/Profile.dart';
import 'package:test/screen/appbar_widget.dart';
import 'package:test/screen/button_widget.dart';
import 'package:test/screen/profile_widget.dart';
import 'package:test/screen/textfield_widget.dart';
import 'package:test/screen/user.dart';
import 'package:test/screen/user_preferences.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  Future<bool?> showWarning(BuildContext context)async => showDialog<bool>(
    context:context,
    builder:(context)=> AlertDialog(
      title: Text('Discard Changes?',style: GoogleFonts.sniglet(fontWeight: FontWeight.w500),),
      content: Text('Changes on this page will not be saved.',style: GoogleFonts.sniglet(fontWeight: FontWeight.w500),),
      actions: [
        ElevatedButton(
          child: Text('Cancel',style: GoogleFonts.sniglet(fontWeight: FontWeight.w500),),
          onPressed: () =>Navigator.pop(context,false),
        ),
        ElevatedButton(
          child: Text('Discard',style: GoogleFonts.sniglet(fontWeight: FontWeight.w500),),
          onPressed: () =>Navigator.pop(context,true),
        ),
      ],
    ),
  );
  Usert user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => WillPopScope(
    onWillPop: () async {
      print('Back Button pressed!');

      final shouldPop = await showWarning(context);
      return shouldPop ?? false;
    },
     child:Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            
            SizedBox(height: 25,),
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24,),
            TextFieldWidget(
              label:'Full Name',
              text:user.name,
              onChanged:(name) {},
            ),
            const SizedBox(height: 24,),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24,),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines:5,
              onChanged: (about) {},
            ),
            const SizedBox(height: 24,),
            const SizedBox(height: 24,),
            btnedit(),
          ],
        ),
     ),
      );

      Widget btnedit() => RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: () {
                      Navigator.pushNamed(context,'Home');
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("edit".toUpperCase(),
                        style: GoogleFonts.sniglet(fontWeight: FontWeight.w500,fontSize: 16),),
                  );
}

              
