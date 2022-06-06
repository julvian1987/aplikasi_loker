import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'homescreen.dart';
import 'loginscreen.dart';

class splashcreen extends StatefulWidget {
  const splashcreen({Key? key}) : super(key: key);

  @override
  State<splashcreen> createState() => _splashcreenState();
}

class _splashcreenState extends State<splashcreen> {
  startTimer() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, () async {
      var box = Hive.box('userBox');
      bool? sudahLogin = box.get('isLogin');

      if (sudahLogin ?? false) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => homescreen()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => loginscreen()),
        );
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/icon.png',
          width: 300,
        ),
      ),
    );
  }
}
