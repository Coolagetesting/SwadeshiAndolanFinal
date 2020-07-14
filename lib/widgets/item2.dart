import 'package:flutter/material.dart';
import 'package:swadeshiandolan/models/item.dart';
import 'package:url_launcher/url_launcher.dart';

class Item2 extends StatelessWidget {
  final Item item;

  Item2({this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0,left : 20),      
      child: Stack(
        children: <Widget>[
          /// Item card
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize(
                size: Size.fromHeight(182.0),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    // / Item description inside a material
                    Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material(
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xFFDA4453),
                            Color(0xFF89216B)
                          ])),
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  /// Title and rating
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(item.name,
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(item.rating,
                                              style: TextStyle(
                                                  color: Colors.amber,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 34.0)),
                                        ],
                                      ),
                                    ],
                                  ),

                                  /// Infos
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Text(item.usersNo,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                      Text('Users',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: Colors.green,
                                          child: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Text(item.type,
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // / Item image
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(54.0),
                          child: Material(
                            elevation: 20.0,
                            shadowColor: Color(0x802196F3),
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              radius: 50,
                                backgroundImage: NetworkImage(item.imageUrl)),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: 160.0,
              right: 32.0,
            ),
            child: Material(
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child:  ListTile(
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              launch(item.android);
                            },
                            child: Text(
                              "Download Android",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              launch(item.ios);
                            },
                            child: Text(
                              "Download IOS",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
