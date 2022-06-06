import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'loginscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Nama : Kiki Priadani',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'NIM : 190103191',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment(0, 0.9),
              child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onPressed: () {
                        var box = Hive.box('userBox').clear();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => loginscreen()));
                      },
                      child: Text('LOG OUT'))))
        ],
      ),
    );
  }
}
