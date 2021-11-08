import 'package:flutter/material.dart';
import 'package:test/backend/database.dart';
import 'package:test/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtEmail(),
                txtPassword(),
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
      margin: EdgeInsets.all(10),
      child: TextFormField(
        style: TextStyle(
          color: PColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Name:",
          icon: Icon(Icons.add_circle_outline_sharp),
          hintText: "Input your name",
        ),
        validator: (val) {
          if (val!.length < 6) {
            return "กรุณากรอกข้อมูลมากกว่า 6 ตัวอักษร";
          }
        },
        onSaved: (val){
          name = val!.trim();
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        style: TextStyle(
          color: PColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Surname:",
          icon: Icon(Icons.add_circle_outline_sharp),
          hintText: "Input your surname",
        ),
        validator: (val) {
          if(val!.isEmpty){
            return "กรุณากรอกข้อมูล";
          }else if(val.length < 3){
            return "กรุณากรอกข้อมูลมากกว่า 3 ตัวอักษร";
          }
        },
        onSaved: (val) {
          surname = val!.trim();
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        style: TextStyle(
          color: PColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
            labelText: "Email:",
            icon: Icon(Icons.email),
            hintText: "Input your Email"),
        keyboardType: TextInputType.emailAddress,
        validator: (val) {
          if(!(val!.contains("@"))){
            return "กรุณากรอกข้อมูลตามรูปแบบ E-mail";
          }
          else if(!(val.contains("."))){
            return "กรุณากรอกข้อมูลตามรูปแบบ E-mail";
          }
        },
        onSaved: (val) {
          email = val!.trim();
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        style: TextStyle(
          color: PColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: "Password:",
          icon: Icon(Icons.lock),
          hintText: "Input your Password",
        ),
        onSaved: (val) {
          password = val!.trim();
        },
        obscureText: true,
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text("Submit"),
      onPressed: () {
        if (formkey.currentState!.validate()){
          formkey.currentState!.save();
        print(name);
        print(surname);
        print(email);
        var local = LocalDB();
        local.Register(name, surname, email, password);
        Navigator.pushNamed(context, "login");
        }
      

      },
    );
  }

  
}
