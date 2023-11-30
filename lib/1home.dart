import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePagee extends StatefulWidget {
  @override
  State<HomePagee> createState() => _HomePageState();
}

class _HomePageState extends State<HomePagee> {
  TextEditingController mController = TextEditingController();

  //var nameFromPref = "";
  String? nameFromPref;
  @override
  void initState() {
    super.initState();

    getNameFromPref();
  }

  void getNameFromPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nameFromPref = prefs.getString("name");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Pref"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nameFromPref != null ? "Welcome, $nameFromPref" : ""),
          TextField(
            controller: mController,
          ),
          SizedBox(height: 11),
          ElevatedButton(
              onPressed: () async {
                var name = mController.text.toString();
                var prefs = await SharedPreferences.getInstance();
                prefs.setString("name", name);
              },
              child: Text("Save"))
        ],
      ),
    );
  }
}
