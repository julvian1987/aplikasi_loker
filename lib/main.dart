import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:aplikasilowonganpekerjaan/loginscreen.dart';
//import 'package:aplikasilowonganpekerjaan/signup.dart';
import 'package:aplikasilowonganpekerjaan/splashscreen.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('userBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
