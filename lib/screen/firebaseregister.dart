import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:test/config/constant.dart';
import 'package:test/screen/firebaselogin.dart';

class FirebaseRegister extends StatefulWidget {
  const FirebaseRegister({Key? key}) : super(key: key);

  @override
  _FirbaseRegisterState createState() => _FirbaseRegisterState();
}
final logo = 'https://logos-world.net/wp-content/uploads/2020/12/Dota-2-Logo.png';
class _FirbaseRegisterState extends State<FirebaseRegister> {
  var name, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign Up",
          style: GoogleFonts.sniglet(fontSize: 20,fontWeight: FontWeight.w500),),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
              SizedBox(height: 20,),
                Image.network(logo),
                txtName(),
                txtEmail(),
                txtPassword(),
                SizedBox(height: 20,),
                btnSingup(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),
        decoration: InputDecoration(
          labelText: 'Username:',
          icon: Icon(Icons.people_sharp),
          hintText: 'Input your name',
        ),
        validator: (val) {
          if (val!.length < 6) {
            return 'กรุณากรอกข้อมูลมากกว่า 6 ตัวอักษร';
          }
        },
        onSaved: (val) {
          name = val;
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),
        decoration: InputDecoration(
          labelText: 'Email:',
          icon: Icon(Icons.email),
          hintText: 'Input your email',
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'กรุณากรอกข้อมูลตามรูปอีเมลด้วย';
          } else if (!(value.contains('.'))) {
            return 'กรุณากรอกข้อมูลตามรูปอีเมลด้วย';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),
        decoration: InputDecoration(
          labelText: 'Password:',
          icon: Icon(Icons.lock),
          hintText: 'Input your password',
        ),
        obscureText: true,
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () {
        if(formkey.currentState!.validate()){
          formkey.currentState!.save();
          registerFirebase();
        }
      },
    );
  }
Widget btnSingup() {
    return  Center(
          child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: () {
                     if(formkey.currentState!.validate()){
                       formkey.currentState!.save();
                       registerFirebase();
                     }
                     
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("singin".toUpperCase(),
                        style: GoogleFonts.sniglet(fontSize: 20,fontWeight: FontWeight.w500,),),
                  ),
        );
  }

  Future<void> registerFirebase() async {
    
   /*  if(formkey.currentState!.validate()){
          formkey.currentState!.save();
          registerFirebase();*/

    try{FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)
    .then((response) {
      //print(response);
      setupProfile();
     MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => FirebaseLogin());
        Navigator.of(context).pushAndRemoveUntil(
            materialPageRoute, (Route<dynamic> route) => false);

    });

    }catch(e){
      print(e);
      myAlert(e);
      var error ='${e}';
      myAlert(error);
    }
  }

  Future<void> setupProfile() async {
    var user = FirebaseAuth.instance.currentUser;
    if(user!=null){
     await user.updateDisplayName(name);
     await user.updatePhotoURL("www.google.com");
    }
    print(user);


  }

  void myAlert(dynamic msg){
     showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: ListTile(
              leading: Icon(
                Icons.alarm_on,
                color: Colors.red,
                size: 48,
              ),
              title: Text("พบข้อผิดพลาด"),
            ),
            content: Text(msg),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              ),
            ],
          );
        });
   
  }
}