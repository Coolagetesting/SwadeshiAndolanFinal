import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemPage extends StatefulWidget {

  ItemPage({Key key}) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
  
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 170.0,
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Nebory - Hyperlocal Social Experience'),
              background: SizedBox.expand(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/social/nebory.jpg'),
                    Container(color: Colors.black26)
                  ],
                ),
              ),
            ),
            elevation: 2.0,
            forceElevated: true,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              /// Rating average
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text('N/A',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 64.0)),
                ),
              ),

              /// Rating stars
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.black12, size: 48.0),
                    Icon(Icons.star, color: Colors.black12, size: 48.0),
                    Icon(Icons.star, color: Colors.black12, size: 48.0),
                    Icon(Icons.star, color: Colors.black12, size: 48.0),
                    Icon(Icons.star, color: Colors.black12, size: 48.0),
                  ],
                ),
              ),

              /// Rating chart lines
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    /// 5 stars and progress bar
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 24.0)),
                          Expanded(
                            child: Theme(
                              data: ThemeData(accentColor: Colors.green),
                              child: LinearProgressIndicator(
                                value: 0.0,
                                backgroundColor: Colors.black12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 24.0)),
                          Expanded(
                            child: Theme(
                              data: ThemeData(accentColor: Colors.lightGreen),
                              child: LinearProgressIndicator(
                                value: 0.0,
                                backgroundColor: Colors.black12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 24.0)),
                          Expanded(
                            child: Theme(
                              data: ThemeData(accentColor: Colors.yellow),
                              child: LinearProgressIndicator(
                                value: 0.0,
                                backgroundColor: Colors.black12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 24.0)),
                          Expanded(
                            child: Theme(
                              data: ThemeData(accentColor: Colors.orange),
                              child: LinearProgressIndicator(
                                value: 0.0,
                                backgroundColor: Colors.black12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star,
                                  color: Colors.black54, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                              Icon(Icons.star,
                                  color: Colors.black12, size: 16.0),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 24.0)),
                          Expanded(
                            child: Theme(
                              data: ThemeData(accentColor: Colors.red),
                              child: LinearProgressIndicator(
                                value: 0.0,
                                backgroundColor: Colors.black12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              /// Review
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: Material(
                  elevation: 12.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    child: Container(
                      child: ListTile(
                        title: Text('Details', style: TextStyle()),
                        subtitle: Text(
                            'In a world where social distancing is becoming the norm, make sure that you are not socially isolated and remain in touch with your neighbors with the all-new Nebory app.Extremely user-friendly and loaded with interesting features that bring people together in various communities, Nebory app is the perfect way to know your neighbors, solve community issues amicably, take collective decisions, discover local events, and have fun together.',
                            style: TextStyle()),
                      ),
                    ),
                  ),
                ),
              ),

              Divider(),

              /// Review
              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      color: Colors.blue,
                      child: MaterialButton(
                        focusColor: Colors.blue,
                        onPressed: () {
                          launch(
                              "https://play.google.com/store/apps/details?id=com.myera");
                        },
                        child: Text(
                          "Download for Android",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                      color: Colors.black,
                      child: MaterialButton(
                        onPressed: () {
                          launch(
                              "https://apps.apple.com/in/app/nebory/id1394427262");
                        },
                        child: Text(
                          "Download for Apple",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              )
            ]),
          ),
        ],
      ),
    );
  
  }
}