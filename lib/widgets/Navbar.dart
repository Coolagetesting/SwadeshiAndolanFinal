import 'package:flutter/material.dart';
import 'package:swadeshiandolan/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      height: 100,
      color: Coolors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/swadeshiandolan.png",
            height: 100,
            width: 300,
          ),
          Row(
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  // setState((){
                  //   pageIndex = 0;
                  // });
                },
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {
                  // setState((){
                  //   pageIndex = 1;
                  // });
                },
                child: Text(
                  'Stats',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  launch("https://coolage.app");
                },
                child: Text(
                  "Visit Coolage",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatefulWidget {
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      color: Coolors.primaryColor,
      child: Column(children: <Widget>[
        Image.asset(
          "assets/swadeshiandolan.png",
          height: 100,
          width: 300,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  // setState((){
                  //   pageIndex = 0;
                  // });
                },
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  // setState((){
                  //   pageIndex = 1;
                  // });
                },
                child: Text(
                  "Stats",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        MaterialButton(
          color: Colors.pink,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          onPressed: () {
            launch("https://coolage.app");
          },
          child: Text(
            "Visit Coolage",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
