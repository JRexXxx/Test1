import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
dynamic latitude="";
dynamic longitude = "";

@override
void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    var location = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

      var address = await placemarkFromCoordinates(location.latitude,location.longitude);
      print(address);


      setState(() {
        latitude ="${location.latitude}";
        longitude="${location.longitude}";
      });

      print(location);
      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ละติจูด "+ latitude,
              style: TextStyle(fontSize: 28),
            ),
            Text(
              "ลองจิจูด "+ longitude,
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
