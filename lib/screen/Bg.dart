import 'package:flutter/material.dart';
import 'package:test/config/constant.dart';

class BGPage extends StatefulWidget {
  const BGPage({Key? key}) : super(key: key);

  @override
  _BGPageState createState() => _BGPageState();
}

class _BGPageState extends State<BGPage> {
  @override
  Widget build(BuildContext context) {
final urlImage = 'https://cdn.discordapp.com/attachments/601439632231759895/908709784746876938/BacG.jpg';
//final logo = 'asset/image/XD.png';

    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(urlImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0),
            BlendMode.darken,
          )
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[ 
            //Image.asset(logo),
            SizedBox(height: 10,),
            Text("",style:TextStyle(color: Colors.white,fontSize: 40,),),
            btnLogin(),
            Text("",style:TextStyle(color: Colors.white,fontSize: 40,),),
            btnSingup(),
            
            
            
          //FlutterLogo(size: 160,),
        ],
          ),
        ),
        
    );
  }
  Widget btnLogin() {
    return  Center(
          child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("login".toUpperCase(),
                        style: TextStyle(fontSize: 16)),
                  ),
        );
  }

  Widget btnSingup() {
    return  Center(
          child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: () {
                     Navigator.pushNamed(context, "register");
                    },
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("singin".toUpperCase(),
                        style: TextStyle(fontSize: 16)),
                  ),
        );
  }
}
