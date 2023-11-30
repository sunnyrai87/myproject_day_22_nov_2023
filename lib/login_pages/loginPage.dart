import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../1home.dart';
import '../components/fonts.dart';
import '../components/my_buttons.dart';
import '../components/my_text_field.dart';
import '../forgot_password.dart';
import '../homePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String LOGIN_PREF_KEY = "isLogin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 45),
            child: Container(
              width: 370,
              color: Colors.white,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.lock, size: 24),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Welcome to Banking courses",
                          style: OpenSansRegular.textStyle(21)),
                    ],
                  ),
                  //username
                  Mynamefield(),
                  //password
                  Column(
                    children: [
                      Mypassfield(),
                      SizedBox(
                        height: 05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => forgotpassword()));
                            },
                            child: Text("forgot password",
                                style: OpenSansSemiBoldItalic.textStyle(12))),
                      ),
                    ],
                  ),

                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          child: Text(
                            "login",
                            style: OpenSansRegular.textStyle(20),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 05,
                              backgroundColor: Colors.blue,
                              minimumSize: Size(320, 50),
                              foregroundColor: Colors.white),

                          onPressed: () async {
                            // if user is successfully login
                            var prefs = await SharedPreferences.getInstance();
                            prefs.setBool(LOGIN_PREF_KEY, true);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomePage())));
                          },
                          //how to change font size in below OpenSansRegular
                        ),
                        SizedBox(height: 05),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text("dont have an account? Register",
                                style: OpenSansSemiBoldItalic.textStyle(12))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
