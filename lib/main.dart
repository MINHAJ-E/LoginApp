// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';

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
