import 'package:flutter/material.dart';

import 'components/my_text_field.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Material(
          elevation: 10,
          child: Container(
            color: Colors.blue.shade50,
            height: 400,
            width: 370,
            child: Column(
              children: [
                SizedBox(height: 30),

                Image.asset("images/forgot password.png",
                    height: 100, width: 120, fit: BoxFit.cover),
                SizedBox(height: 25),
                Text("Enter your email id we will send you\n"
                    "link to reset", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 05),
                UIhelper.forgotpasswordtextfield(),
                //forgotpasswordtextfield(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
