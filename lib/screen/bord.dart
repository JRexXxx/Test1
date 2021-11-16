import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';
import 'package:test/screen/chat_screen.dart';
import 'package:test/screen/homepage.dart';

class BordData extends StatefulWidget {
  const BordData({Key? key}) : super(key: key);

  @override
  _BordDataState createState() => _BordDataState();
}

class _BordDataState extends State<BordData> {
  final dbfirebase = FirebaseDatabase.instance.reference().child("Player");

  Future<void> updateData(String key) async {
    dbfirebase.child(key).update({
      'Status': "Found",
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FirebaseAnimatedList(
        query: dbfirebase,
        itemBuilder: (context, snapshot, animation, index) {
          return Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                     showDialogFunc(
                  context, snapshot, animation, index);
                  },
                  title: Text(
                    "Name: " + "${snapshot.value['Name']}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Id steam: " + "${snapshot.value['Stem ID']}"),
                      Text("Status: " + "${snapshot.value['Status']}"),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  showDialogFunc(context, snapshot, animation, index) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Text(
                    "Name: " + "${snapshot.value['Name']}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    ),
                    SizedBox(height: 25),
                    Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("asset/image/people.png"),
                ),
                    SizedBox(
                      height: 25,
                    ),
                    Text("Id steam: " + "${snapshot.value['Stem ID']}"),
                      Text("MMR: " + "${snapshot.value['MMR']}"),
                      Text("Role: " + "${snapshot.value['Role']}"),
                      Text("Status: " + "${snapshot.value['Status']}"),
                      SizedBox(height: 10,),
                    RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: (){
                      Navigator.pushNamed(context, "mess");
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("Chat",
                        style: TextStyle(fontSize: 16)),
                  ),
                   
                  ],
                ),
              ),
            ),
          );
        });
  }
}
