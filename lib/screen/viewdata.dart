import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';


class ViewData extends StatefulWidget {
  const ViewData({Key? key}) : super(key: key);

  @override
  _ViewDataState createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  final dbfirebase = FirebaseDatabase.instance.reference().child("Player");

Future<void> updateData(String key) async{
  dbfirebase.child(key).update({
    'Status':"Found",
  });
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FirebaseAnimatedList(
        query: dbfirebase,
        itemBuilder: (context, snapshot, animation, index) {
          return Container(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon((Icons.nature_people)),
                  ),
                  title: Text("Name: "+"${snapshot.value['Name']}",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Id steam: " + "${snapshot.value['Stem ID']}"),
                      Text("MMR: " + "${snapshot.value['MMR']}"),
                      Text("Role: " + "${snapshot.value['Role']}"),
                      Text("Status: " + "${snapshot.value['Status']}"),

                    ],
                  ),
                  
                 trailing: Column(
                      children: [
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.delete_sharp,size: 25,),
                            onPressed: () {
                              print(snapshot.key);
                              dbfirebase.child(snapshot.key!).remove();
                            },
                          ),
                        ),
                        
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.check,size: 30,),
                            onPressed: () {
                              updateData(snapshot.key!);
                            },
                          ),
                        ),
                       
                      ],
                    )
                  
                  
                ),
                
              ),
            ),
          );
        },
      ),
    );
  }
}
