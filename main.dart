import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'buttons.dart';
import 'SecondScreen.dart';
import 'verification.dart';
import 'camera_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // runApp(MyApp());
  // var db = FirebaseFirestore.instance;
  // final user = <String, dynamic>{
  //   "first": "Ada",
  //   "last": "Lovelace",
  //   "born": 1811
  // };

// Add a new document with a generated ID
  //db.collection("criminals").doc("criminal 4").set(user);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cricker App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: login(),
        debugShowCheckedModeBanner: false);
  }
}
