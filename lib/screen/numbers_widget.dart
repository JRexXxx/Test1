import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>IntrinsicHeight(
  child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      buildButton(context, '2870','MMR'),
      buildDivider(),
      buildButton(context, '35','Following'),
      buildDivider(),
      buildButton(context, '50','Followers'),

    ],
  ),
);
  Widget buildDivider() => Container(
    height:24,
  child:VerticalDivider(),
  );

  Widget buildButton(BuildContext context,String value,String text)=>
  MaterialButton(
    padding: EdgeInsets.symmetric(vertical: 4),
    onPressed: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          value,
          style: GoogleFonts.sniglet(fontSize: 25,fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 2),
        Text(
          text,
          style:GoogleFonts.sniglet(fontWeight: FontWeight.w500),
        ),
      ],

    )
  );
}