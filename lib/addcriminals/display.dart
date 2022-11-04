import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cricker/addcriminals/image.dart';
import 'package:cricker/attendence/location.dart';
import 'package:cricker/read%20data/get_profile.dart';
import 'package:cricker/read%20data/get_user_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class display extends StatefulWidget {
  const display({Key? key}) : super(key: key);

  @override
  _displayState createState() => _displayState();
}

class _displayState extends State<display> {
  String url1 =
      "https://firebasestorage.googleapis.com/v0/b/cricker-11204.appspot.com/o/photos%2F2022-11-03T21%3A10%3A55.036996?alt=media&token=ece6e757-c4c0-46ac-934d-87c3bd7ff361";
  final controllerName = TextEditingController();
  final controllerAge = TextEditingController();
  final controllerCriminalid = TextEditingController();
  final controllerAddress = TextEditingController();
  final contRollerDist = TextEditingController();
  final controllerCategory = TextEditingController();
  final controllerShift = TextEditingController();
  final controllerImageurl = TextEditingController();

  // document IDs
  List<String> docIDs = [];

  //get docIDs
  Future getDocId() async {
    await FirebaseFirestore.instance.collection('criminals').get().then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            docIDs.add(document.reference.id);
          }),
        );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Records'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder(
                  future: getDocId(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                      itemCount: docIDs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 40,
                              child: Image.network(
                                url1, // GetProfile(documentId: docIDs[index]).toString(),
                                fit: BoxFit.fill,
                              ),
                              // child: // fit: BoxFit.fill,
                            ),
                            title: GetUserName(documentId: docIDs[index]),
                            tileColor: Colors.grey[200],
                            //button to refreshed
                            trailing: ElevatedButton(
                              child: new Text('Incomplete'),
                              onPressed: () {
                                String value = docIDs[index];
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
}
