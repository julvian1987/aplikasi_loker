import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'loginscreen.dart';
import 'profil.dart';
import 'package:aplikasilowonganpekerjaan/lowongan.dart';

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  String teks = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Jobsplace'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              var route = new MaterialPageRoute(
                builder: (context) => profil(),
              );
              Navigator.of(context).push(route);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              child: Image.asset(
                'images/loker2.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(50.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                      hintText: 'Masukan Lokasi Anda Sekarang',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  var route = new MaterialPageRoute(
                    builder: (context) => Lowongan(),
                  );
                  Navigator.of(context).push(route);
                },
                child: Text('SEARCH'),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 5),
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      var box = Hive.box('userBox').clear();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => loginscreen()));
                    },
                    child: Text('LOG OUT')))
          ],
        ),
      ),
    );
  }
}
