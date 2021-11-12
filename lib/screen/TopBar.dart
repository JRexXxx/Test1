import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/screen/Adddata.dart';
import 'package:test/screen/Str_1.dart';
import 'package:test/screen/str.dart';
import 'package:test/screen/viewdata.dart';



class TopBar extends StatefulWidget {
  const TopBar({ Key? key }) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}
int theriGroupVakue=0;

final Map<int,Widget> logoWidgets = const<int,Widget>{
  0:Text("FindTeam"),
  1:Text("History"),
};



class _TopBarState extends State<TopBar> {



List<Widget> bodies =[
  AddData(),
  ViewData(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodies[theriGroupVakue],
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size(double.infinity,0.0),
          child: Padding(
            padding: EdgeInsets.only(top: 5.0,bottom: 10.0),child: Row(
              children:<Widget> [
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child:CupertinoSegmentedControl(
                    groupValue: theriGroupVakue,
                    onValueChanged: (int changeFromGroupValue){
                      setState(() {
                        theriGroupVakue = changeFromGroupValue;
                      });
                    },
                    children: logoWidgets,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),

              ],
            ),
          ),
          ),
      ),
    );
  }
}