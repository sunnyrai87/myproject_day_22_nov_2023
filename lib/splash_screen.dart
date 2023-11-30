import 'dart:async';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'firstpage.dart';
import '1home.dart';
import 'homePage.dart';
import 'login_pages/loginPage.dart';
import 'login_pages/new_login_page.dart';
import 'login_pages/one_login_page.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async {
      var prefs = await SharedPreferences.getInstance();
      //var
      bool? checkLogin = prefs.getBool(LoginPage.LOGIN_PREF_KEY);
      Widget navigateTo = oneLoginPage();
      if (checkLogin != null && checkLogin) {
        navigateTo = HomePage();
      }

      // if (checkLogin == null) {
      //   //login
      //   navigateTo = LoginPage();
      // } else {
      //   if (checkLogin) {
      //     //home
      //     navigateTo = HomePage();
      //   } else {
      //     //login
      //     navigateTo = LoginPage();
      //   }
      // }

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => navigateTo,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.white, Colors.green])),
        child: Center(child: Icon(Icons.lightbulb_outline_rounded, size: 45)),
      ),
    );
  }
}

// Center(
// child: Text(
// "Welcome to banking courses",
// style: TextStyle(
// color: Colors.white,
// fontSize: 16,
// fontWeight: FontWeight.w600,
// fontFamily: "OpenSansSemiBoldItalic"),
