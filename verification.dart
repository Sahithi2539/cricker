import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:cricker/camera_page.dart';

class verification extends StatelessWidget {
  const verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
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
    );
  }
}