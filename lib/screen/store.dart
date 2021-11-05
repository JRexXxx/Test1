import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';
import 'package:test/screen/Adddata.dart';
import 'package:test/screen/viewdata.dart';

class Store extends StatefulWidget {
  const Store({ Key? key }) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
   @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Store"),
        ),
        body: TabBarView(
          children: [
            AddData(),
            ViewData()
           
          ],
        ),
        bottomNavigationBar: Container(
          color: PColor,
          child: TabBar(
            indicatorColor: Colors.redAccent,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "Add Data",
              ),
              Tab(
                text: "View Data",
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}