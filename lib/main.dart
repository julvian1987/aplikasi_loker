import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'homescreen.dart';
import 'loginscreen.dart';
import 'signup.dart';
import 'splashscreen.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('userBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashcreen(),
    );
  }
}
