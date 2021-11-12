import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;
  return AppBar(
          title: Text("Doat 2 TeamFinder"),
          leading: BackButton(),
        );
}
