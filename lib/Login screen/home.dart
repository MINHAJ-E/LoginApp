// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login%20screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: List.generate(
            50,
            (index) => Column(
                  children: [
                    Text("texttt...$index"),
                    Divider(),
                  ],
                )),
      )),
    );
  }

  signout(BuildContext ctx)async {

    final _sharedpref = await SharedPreferences.getInstance();
      await _sharedpref.clear();


    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
