import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _HomeState();
}

class _HomeState extends State<firstpage> {
  bool allstudents = false,
      stockmarket = false,
      studentwithbag = false,
      trading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Gautam",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "OpenSans"),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Icon(
                        Icons.book_online,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Join banking courses",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: "OpenSansSemiBold"),
            ),
            Text(
              "with placement assistance",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontFamily: "OpenSansSemiBoldItalic"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      allstudents = false;
                      stockmarket = false;
                      studentwithbag = false;
                      trading = true;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(11),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: trading == true
                                    ? Colors.blue
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(11)),
                            padding: EdgeInsets.all(11),
                            child: Image.asset(
                              'images/trading.jpg',
                              height: 100,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Stock Market course"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 22),
                  GestureDetector(
                    onTap: () {
                      allstudents = true;
                      stockmarket = false;
                      studentwithbag = false;
                      trading = false;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(11),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: allstudents == true
                                    ? Colors.blue
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(11)),
                            padding: EdgeInsets.all(11),
                            child: Image.asset(
                              'images/allstudents.jpg',
                              height: 100,
                              width: 150,
                              fit: BoxFit.cover,
                              //color: allstudents == true?Colors.white:  Colors.orange,
                            ),
                          ),
                          Text("Banking course"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 22),
                  GestureDetector(
                    onTap: () {
                      allstudents = false;
                      stockmarket = true;
                      studentwithbag = false;
                      trading = false;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(11),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: stockmarket == true
                                        ? Colors.blue
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(11)),
                                padding: EdgeInsets.all(11),
                                child: Image.asset(
                                  'images/stockmarket.jpg',
                                  height: 100,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Equity dealer course"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 22),
                  GestureDetector(
                    onTap: () {
                      allstudents = false;
                      stockmarket = false;
                      studentwithbag = true;
                      trading = false;
                      setState(() {});
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(11),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: studentwithbag == true
                                    ? Colors.blue
                                    : Colors.white),
                            padding: EdgeInsets.all(11),
                            child: Image.asset(
                              'images/studentwithbag.jpg',
                              height: 100,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Mutual funds course"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 22),
                  GestureDetector(
                    onTap: () {
                      allstudents = false;
                      stockmarket = false;
                      studentwithbag = false;

                      setState(() {});
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(11),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: trading == true
                                    ? Colors.blue
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(11)),
                            padding: EdgeInsets.all(11),
                            child: Image.asset(
                              'images/trading.jpg',
                              height: 100,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("CA course"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
