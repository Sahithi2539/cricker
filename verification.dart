import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'camera_page.dart';
import 'geotag.dart';

class verification extends StatelessWidget {
  const verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 50,
              width: 200,
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
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => geotag()),
                  );
                },
                child: const Text('Get Location'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
