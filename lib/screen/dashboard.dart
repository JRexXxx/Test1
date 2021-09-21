import 'package:flutter/material.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({ Key? key }) : super(key: key);

  @override
  _DasboardState createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Dashboard"),
    );
  }
}