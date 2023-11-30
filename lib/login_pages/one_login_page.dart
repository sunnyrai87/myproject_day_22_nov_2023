import 'package:flutter/material.dart';

class oneLoginPage extends StatelessWidget {
  const oneLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          //stops: [0.0,1.0],
          tileMode: TileMode.clamp,
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade800,
            Colors.blue.shade400
          ],
        ),
      ),
          child: Center(
            child: Stack(
              children: [Positioned(
                bottom: 350,
                left: 0,
                right: 0,
                  child: Column(
                    children: [
                      Image.asset("images/Stock market chart.png",fit: BoxFit.cover)
                    ],

                  ))
              
              ],
            ),
          ),
    ));
  }
}
