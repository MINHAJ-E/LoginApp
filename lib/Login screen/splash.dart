// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login%20screen/home.dart';
import 'package:flutter_application_1/Login%20screen/login.dart';
import 'package:flutter_application_1/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screensplash extends StatefulWidget {
  const Screensplash({super.key});

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override
  void initState() { 
   checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
   
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/computer.jpg',
          height: 300,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenLogin()));
  }
//shred preferance

  Future<void>checkUserLoggedIn()async{
    final _sharedpref = await SharedPreferences.getInstance();
   final _userLoggedIn= _sharedpref.getBool(SAVE_KEY_NAME);
   if(_userLoggedIn == null || _userLoggedIn == false){
      gotoLogin();
   }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome()));
   }
  }
}
