// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login%20screen/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SAVE_KEY_NAME = 'USER logged IN';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Login sample",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Screensplash(),
        debugShowCheckedModeBanner: false);
  }
}
