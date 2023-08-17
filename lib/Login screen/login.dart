// ignore_for_file: prefer_const_constructors
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key, });

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                    controller: usernamecontroller,
                    decoration: InputDecoration(
                        labelText: "enter your Email",
                        border: OutlineInputBorder(),
                        hintText: "User NAme"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'value is Empty';
                      }
                      return null;
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller:passwordcontroller,
                    maxLength: 10,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "enter password",
                      border: OutlineInputBorder(),

                      hintText: "Password",
                      // helperText:"enter your password.",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'value is empty';
                      }
                      return null;
                    }),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        checkLogin(context);
                      } else {
                        print("data is empty");
                      }
                    },
                    icon: Icon(Icons.check),
                    label: Text("Log in")),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void checkLogin(BuildContext ctx) {
    final username = usernamecontroller.text;
    final password = passwordcontroller.text;
    if (username == password) {
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          content: Text("username does not match")));
    }
  }
}
