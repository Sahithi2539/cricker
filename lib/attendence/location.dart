import 'package:cricker/addcriminals/image.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double long;
  late double lat;
  late String _currentAddress = '';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentAddress != null) Text(_currentAddress),
            TextButton(
              child: Text("Get location"),
              onPressed: () {
                getlocation();
                _getAddressFromLatLng();
              },
            ),
          ],
        ),
      ),
    );
  }

  void getlocation() async {
    LocationPermission per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied ||
        per == LocationPermission.deniedForever) {
      print("permission denied");
      LocationPermission per1 = await Geolocator.requestPermission();
    } else {
      print('i am there');
      Position currentLoc = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      setState(() {
        long = currentLoc.longitude;
        lat = currentLoc.latitude;
      });
    }
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);

      Placemark place = placemarks[0];
      // print("${place.locality}, ${place.postalCode}, ${place.country}");
      setState(() {
        _currentAddress = "${place.postalCode}";
        print("${place.locality}, ${place.postalCode}, ${place.country}");
        print('address');
      });
    } catch (e) {
      print(e);
    }
  }
}
