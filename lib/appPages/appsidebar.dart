import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swadeshiandolan/firebase/database.dart';
import 'package:swadeshiandolan/models/item_prod.dart';
import 'package:swadeshiandolan/widgets/item1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppContainer extends StatefulWidget {
  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  final List<String> menuItems = [
    "Social",
    "Chatting",
    "Shopping",
    "Scanning",
    "Office",
    "Music",
    "Browsers",
    "Games",
    "News",
    "Security",
    "Finance",
    "Mail",
    "Utility",
    "Video Calling",
    "File Sharing",
    "Video Editing",
    "Photo Editing",
  ];

  final List<String> menuIcons = [
    "icon_Social",
    "icon_Chatting",
    "icon_Shopping",
    "icon_Scanning",
    "icon_Office",
    "icon_Music",
    "icon_Browsers",
    "icon_Games",
    "icon_News",
    "icon_Security",
    "icon_Finance",
    "icon_Mail",
    "icon_Utility",
    "icon_Video_Calling",
    "icon_File_Sharing",
    "icon_Video_Editing",
    "icon_Photo_Editing",
  ];

  bool sidebarOpen = false;
  double yOffset = 0;
  double xOffset = 60;
  double pageScale = 1;

  int selectedMenuItem = 0;

  void setSidebarState() {
    setState(() {
      xOffset = sidebarOpen ? 265 : 60;
      yOffset = sidebarOpen ? 70 : 0;
      pageScale = sidebarOpen ? 0.8 : 1;
    });
  }

  Widget itemsList() {
    return StreamBuilder(
      stream: itemsRef
          .document('Apps')
          .collection(menuItems[selectedMenuItem])
          .snapshots(),
      builder: (context, snapshot) {
        return (snapshot.hasData && snapshot.data.documents.length > 0)
            ? GridView.builder(
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.isMobile ? 1 : 3),
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot doc = snapshot.data.documents[index];
                  ItemProd itemModel = ItemProd.fromDocument(doc);
                  return Item1(item: itemModel);
                },
              )
            : Container(
                child: Text('No Data Available'),
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(),
                  child: Container(
                    color: Color(0xFFB1F2B36),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            sidebarOpen = true;
                            setSidebarState();
                          },
                          child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                            child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(20),
                                hintText: "Search here...",
                                hintStyle: TextStyle(
                                  color: Color(0xFFB666666),
                                )),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                      child: new ListView.builder(
                          itemCount: menuItems.length,
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // sidebarOpen = false;
                                  setState(() {
                                    selectedMenuItem = index;
                                  });
                                  setSidebarState();
                                },
                                child: MenuItem(
                                  itemIcon: menuIcons[index],
                                  itemText: menuItems[index],
                                  selected: selectedMenuItem,
                                  position: index,
                                ),
                              ))),
                ),
                Container(
                  child: MenuItem(
                    itemIcon: "icon_home",
                    itemText: "Applications",
                    selected: selectedMenuItem,
                    position: menuItems.length + 1,
                  ),
                )
              ],
            ),
          ),
          AnimatedContainer(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 200),
            transform: Matrix4.translationValues(xOffset, yOffset, 1.0)
              ..scale(pageScale),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: sidebarOpen
                    ? BorderRadius.circular(20)
                    : BorderRadius.circular(0)),
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 24),
                    height: 60,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            sidebarOpen = !sidebarOpen;
                            setSidebarState();
                          },
                          child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(20),
                              child: Icon(Icons.menu)),
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: Text(
                              menuItems[selectedMenuItem],
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )),
                      ],
                    )),
                Expanded(
                  child: itemsList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String itemText;
  final String itemIcon;
  final int selected;
  final int position;
  MenuItem({this.itemText, this.itemIcon, this.selected, this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected == position ? Color(0xFFB151E26) : Color(0xFFB1F2B36),
      child: Row(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/menuicon/apps/$itemIcon.png",
                width: 20,
                height: 20,
              )),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              itemText,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
