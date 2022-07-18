import 'package:flutter/material.dart';
import 'SecondScreen.dart';

class buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(100, 111, 212, 1),
          leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
              onPressed: () {
                //
              }),
          /*actions: <Widget>[
            Container()
            child: OutlineButton(  
                child: Text("Outline Button", style: TextStyle(fontSize: 20.0),),  
                highlightedBorderColor: Colors.red,  
                shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(15)),  
                onPressed: () {},  
              ),  
          ],*/
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(155, 163, 235, 1), // background
                  onPrimary: Colors.black, // foreground
                ),
                child: Text(
                  'KD Sheets',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
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
                  'DC Sheets',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
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
                  'Suspect Sheets',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
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
                  'Rowdy Sheets',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        )));
  }
}
