import 'package:cricker/buttons.dart';
import 'package:cricker/verification.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> items = <String>[
    'area 1',
    'area 2',
    'area 3',
    'area 4',
    'area 5',
  ];
  String dropdownValue = 'area 1';
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
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
              width: 200,
              height: 50,
              child: DropdownButton<String>(
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                value: dropdownValue,
                items: items.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(155, 163, 235, 1), // background
                  onPrimary: Colors.black, // foreground
                ),
                child: Text(
                  'Attendance',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => verification()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(155, 163, 235, 1), // background
                  onPrimary: Colors.black, // foreground
                ),
                child: Text(
                  'Checking',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => verification()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(155, 163, 235, 1), // background
                  onPrimary: Colors.black, // foreground
                ),
                child: Text(
                  'Daily Target',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => verification()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ]),
        ));
  }
}
