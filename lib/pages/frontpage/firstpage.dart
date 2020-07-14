import 'package:swadeshiandolan/pages/frontpage/footer.dart';
import 'package:swadeshiandolan/pages/frontpage/middle.dart';
import 'package:swadeshiandolan/pages/frontpage/showcase.dart';
import 'package:swadeshiandolan/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'header.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Coolors.primaryColor,
        body: ListView(
          shrinkWrap: true,
          children: [
          HeaderScreen(),
          if (context.isMobile) IntroductionWidget().p16(),
          MiddleScreen(),
          ShowCase(),
          FooterScreen(),
        ]));
  }
}
