import 'package:camera/camera.dart';
import 'package:cricker/buttons.dart';
import 'package:flutter/material.dart';
import 'camera_page.dart';

class verification extends StatelessWidget {
  const verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 111, 212, 1),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => buttons()),
                );
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(155, 163, 235, 1), // background
                  onPrimary: Colors.black, // foreground
                ),
                onPressed: () async {
                  await availableCameras().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CameraPage(
                          cameras: value,
                        ),
                      ),
                    ),
                  );
                },
                child: const Text('Launch Camera'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
