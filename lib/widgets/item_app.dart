import 'package:flutter/material.dart';

class ItemApp extends StatelessWidget {
  
  final String name,image;
  ItemApp({this.name,this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(height: 6.0),
          Text(
            name,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      );
  }
}