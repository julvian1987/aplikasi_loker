import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'homescreen.dart';
import 'loginscreen.dart';

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Profil Saya'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.deepPurple[800],
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(image: AssetImage('images/me.png'), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Kelompok 8',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[800],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'TI19B1',
                      style: TextStyle(fontSize: 15, color: Colors.deepPurple[900]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, right: 50, left: 50),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepPurple[900]),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.home, color: Colors.grey, size: 58),
                              Text(
                                'Surakarta',
                                style: TextStyle(fontSize: 12, color: Colors.black45, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 130,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepPurple[900]),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.phone_android, color: Colors.grey, size: 58),
                              Text(
                                'klp8@gmail.com',
                                style: TextStyle(fontSize: 12, color: Colors.black45, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
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
                  child: Text('LOG OUT'))),
        ],
      ),
    );
  }
}
