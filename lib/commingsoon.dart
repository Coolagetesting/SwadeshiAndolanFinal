import 'package:flutter/material.dart';
import 'package:swadeshiandolan/utils/colors.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Coolors.primaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset(
                  "assets/swadeshiandolan.png",
                  height: 80,
                  width: 300,
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Coming Soon . . . .",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
