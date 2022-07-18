import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class geotag extends StatefulWidget {
  @override
  _geotag createState() => _geotag();
}

class _geotag extends State<geotag> {
  var long = "longitude";
  var lat = "latitude";
  void getlocation() async {
    LocationPermission per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied ||
        per == LocationPermission.deniedForever) {
      print("permission denied");
      LocationPermission per1 = await Geolocator.requestPermission();
    } else {
      Position currentLoc = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      setState(() {
        long = currentLoc.longitude.toString();
        lat = currentLoc.latitude.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 111, 212, 1),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "logitude : " + long,
              style: TextStyle(
                color: Color.fromRGBO(100, 111, 212, 1),
                fontSize: 30,
              ),
            ),
            Text(
              "latitude : " + lat,
              style: TextStyle(
                color: Color.fromRGBO(100, 111, 212, 1),
                fontSize: 30,
              ),
            ),
            ElevatedButton(
              onPressed: getlocation,
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(155, 163, 235, 1), // background
                onPrimary: Colors.black, // foreground
              ),
              child: Text(
                "Get Location",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
