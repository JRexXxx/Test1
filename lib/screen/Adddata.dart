import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/config/constant.dart';

class AddData extends StatefulWidget {
  const AddData({ Key? key }) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  // ประกาศตัวแปรสำหรับการเพิ่มสินค้า
  String? name, id, mmr,role;
  final formKey = GlobalKey<FormState>();
  final dbfirebase = FirebaseDatabase.instance.reference().child("Player");
  String sta="Pending";
  String sta1="Pending";
  

  Future<void> createData() async{
    dbfirebase.push().set({"Name":name,"Stem ID":id,"MMR":mmr,"Role":role,"Status":sta})
    .then((value)=>print("success"))
    .catchError((onError){
      print(onError);
    });

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtId(),
                txtMMR(),
                txtrole(),
                btnSubmit(),
              ],
            ),
          ),
          
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          labelText: 'Name:',
          icon: Icon(Icons.people_sharp),
          hintText: 'Input your Name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } 
        },
        onSaved: (value) {
          name = value;
         
        },
      ),
    );
  }

  Widget txtId() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style:GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          labelText: 'ID Steam:',
          icon: Icon(Icons.keyboard_alt_sharp),
          hintText: 'Input your ID',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } else if (value.length < 8) {
            return 'กรุณาใส่ข้อมูลมากกว่า 8 ตัวอักษร';
          }
        },
        onSaved: (value) {
          id = value;
          
        },
      ),
    );
  }

  Widget txtMMR() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          labelText: 'MMR:',
          icon: Icon(Icons.format_list_numbered),
          hintText: 'Input your MMR',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } 
        },
        onSaved: (value) {
          mmr = value;
          
        },
      ),
    );
  }



  Widget txtrole() {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextFormField(
        style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          labelText: 'Role:',
          icon: Icon(Icons.star_outline_sharp),
          hintText: 'Input your Role',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูลด้วย';
          } 
        },
        onSaved: (value) {
          role = value;
     
        },
      ),
    );
  }


  Widget btnSubmit() => RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            print(name);
            print(id);
            print(mmr);
            print(role);
            createData();
            formKey.currentState!.reset();
          }
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("Submit".toUpperCase(),
                        style:GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500),),
                  );


            

}