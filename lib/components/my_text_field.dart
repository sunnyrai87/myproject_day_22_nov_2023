import 'package:flutter/material.dart';

class Mynamefield extends StatelessWidget {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: nameController,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_circle_rounded,
                color: Colors.black,
              ),
              label: Text("name"),
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Enter your name here",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(08),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(08),
                  borderSide: BorderSide(color: Colors.blue)),
              fillColor: Colors.lightBlue.shade50),
        ),
      ),
    );
  }
}

class Mypassfield extends StatefulWidget {
  @override
  State<Mypassfield> createState() => _MypassfieldState();
}

class _MypassfieldState extends State<Mypassfield> {
  var passController = TextEditingController();

  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 50,
        child: TextField(
          obscureText: visibility,
          //obscuringCharacter: "",
          //keyboardType: TextInputType.number,
          //maxLength: 1,
          //maxLines: 5,

          controller: passController,
          decoration: InputDecoration(
              //counterText: "",
              prefixIcon: Icon(
                Icons.security,
                color: Colors.black,
              ),
              label: Text("password"),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {});
                  //below means visibility false
                  visibility = !visibility;
                },
                //if                            else
                icon:
                    Icon(visibility ? Icons.visibility_off : Icons.visibility),
              ),
              labelStyle: TextStyle(color: Colors.black),
              hintText: "Enter your password here",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(08),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(08),
                  borderSide: BorderSide(color: Colors.blue)),
              fillColor: Colors.lightBlue.shade50),
        ),
      ),
    );
  }
}

//forgot password textfield
class UIhelper {
  static forgotpasswordtextfield(){
    return Container(
      height: 40,
      width: 220,
      child: TextField(

      ),

    );
  }
}