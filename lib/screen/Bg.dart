import 'package:flutter/material.dart';

class BGPage extends StatefulWidget {
  const BGPage({Key? key}) : super(key: key);

  @override
  _BGPageState createState() => _BGPageState();
}

class _BGPageState extends State<BGPage> {
  @override
  Widget build(BuildContext context) {
final urlImage = 'https://wallpapercave.com/wp/wp3591724.jpg';
final logo = 'https://logos-world.net/wp-content/uploads/2020/12/Dota-2-Logo.png';

    return Scaffold(
      appBar: AppBar(
        title: Text("DOTA 2"),
        centerTitle: true,
      ),
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
            Image.network(logo),
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
          child: GestureDetector(
            onTap: ()=>{
               Navigator.pushNamed(context,"login")
            },
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1.0,color: Colors.blue),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('     Login     ', style: TextStyle(color: Colors.blue,fontSize: 20),),
            ),
          )
        );
  }

  Widget btnSingup() {
    return  Center(
          child: GestureDetector(
            onTap: ()=>{
              Navigator.pushNamed(context,"register")
            },
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(width: 1.0,color: Colors.blue),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('     SingUp     ', style: TextStyle(color: Colors.blue,fontSize: 20),),
            ),
          )
        );
  }
}
