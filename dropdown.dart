import 'dart:html';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  List<String> items = <String>[
    'area 1',
    'area 2',
    'area 3',
    'area 4',
    'area 5',
  ];
  String dropdownValue = 'area 1';
  const MyApp({Key? Key}) : super(Key: Key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          onChanged: (String? newValue){
            setState((){
              dropdownValue = newValue!;
            });
          },
          value : dropdownValue, 
          items: items.map<DropdownMenuItem<String>>(
            (String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
            );
        },
      ).toList(),
      ),
      ),
    )
  }
}
