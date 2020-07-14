import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Column(
        children: <Widget>[
          GradientAppBar(
            backgroundColorStart: Colors.orangeAccent,
            backgroundColorEnd: Colors.green,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.maybePop(context),
            ),
            title: Image.asset(
              "assets/swadeshiandolan.png",
              height: 100,
              width: 300,
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  launch("https://coolage.app");
                },
                child: Text(
                  "Coolage",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )
            ],
            centerTitle: true,
          ),
          AboutPageBody(),
        ],
      ),
    );
  }
}

class AboutPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "To Build",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
