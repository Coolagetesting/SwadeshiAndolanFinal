import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swadeshiandolan/firebase/database.dart';
import 'package:swadeshiandolan/models/item.dart';
import 'package:swadeshiandolan/models/item_prod.dart';
import 'package:swadeshiandolan/widgets/item1.dart';
import 'package:flutter/material.dart';
import 'package:swadeshiandolan/widgets/item_app.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/item2.dart';

class ShowCase extends StatefulWidget {
  @override
  _ShowCaseState createState() => _ShowCaseState();
}

class _ShowCaseState extends State<ShowCase> with TickerProviderStateMixin {
  TabController _appController;
  TabController _productController;
  TabController _tabController;

  int selectedMenuItem = 0;

  final List<String> menuItems = [
    "Mobiles",
    "Cold Drinks",
    "Soap",
    "Electronics",
    "Computer and tablets",
    "Online Shopping",
    "Car",
    "Toothbrush",
    "Tea Coffee",
    "Blade",
    "Shaving Cream",
    "Shampoo",
    "Talcum Powder",
    "Milk",
    "Mobile Connection",
    "Textile",
    "Bikes",
    "Footwear",
    "Cloths",
    "Garments",
    "Watches",
    "Child Food",
    "Salt",
    "Icecream",
    "Biscut",
    "Ketchup",
    "Snacks",
    "water",
    "tonic",
    "oil",
    "Washing Powder",
    "Cosmetics",
    "Pen",
  ];

  List<Tab> tabList = [
    new Tab(text: 'Applocations'),
    new Tab(text: 'Products'),
  ];
  List<Tab> appList = [
    new Tab(text: 'Social'),
    new Tab(text: 'Chatting'),
    new Tab(text: 'Shopping'),
    new Tab(text: 'Scanning'),
    new Tab(text: 'Office'),
    new Tab(text: 'Music'),
    new Tab(text: 'Browsers'),
    new Tab(text: 'Games'),
    new Tab(text: 'Security'),
    new Tab(text: 'News'),
    new Tab(text: 'Finance'),
    new Tab(text: 'Mail'),
    new Tab(text: 'Utility'),
    new Tab(text: 'Video Calling'),
    new Tab(text: 'File Sharing'),
    new Tab(text: 'Video Editing'),
    new Tab(text: 'Photo Editing'),
  ];
  List<Tab> productList = [
    new Tab(text: 'Mobiles'),
    new Tab(text: "Cold Drinks"),
    new Tab(text: "Soap"),
    new Tab(text: "Electronics"),
    new Tab(text: "Computer and tablets"),
    new Tab(text: "Online Shopping"),
    new Tab(text: "Car"),
    new Tab(text: "Toothbrush"),
    new Tab(text: "Tea Coffee"),
    new Tab(text: "Blade"),
    new Tab(text: "Shaving Cream"),
    new Tab(text: "Shampoo"),
    new Tab(text: "Talcum Powder"),
    new Tab(text: "Milk"),
    new Tab(text: "Mobile Connection"),
    new Tab(text: "Textile"),
    new Tab(text: "Bikes"),
    new Tab(text: "Footwear"),
    new Tab(text: "Cloths"),
    new Tab(text: "Garments"),
    new Tab(text: "Watches"),
    new Tab(text: "Child Food"),
    new Tab(text: "Salt"),
    new Tab(text: "Icecream"),
    new Tab(text: "Biscut"),
    new Tab(text: "Ketchup"),
    new Tab(text: "Snacks"),
    new Tab(text: "water"),
    new Tab(text: "tonic"),
    new Tab(text: "oil"),
    new Tab(text: "Washing Powder"),
    new Tab(text: "Cosmetics"),
    new Tab(text: "Pen"),
  ];

  @override
  void initState() {
    super.initState();
    _appController = new TabController(length: 16, vsync: this);
    _productController = TabController(length: 33, vsync: this);
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          TabBar(
              isScrollable: true,
              controller: _tabController,
              indicatorColor: Colors.orange,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.white,
              tabs: tabList),
          Expanded(
            flex: 1,
            child: TabBarView(
              children: [
                appBar(),
                productsBar(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }

  Widget productsBar() {
    return Column(
      children: <Widget>[
        TabBar(
            isScrollable: true,
            controller: _productController,
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.white,
            tabs: productList),
        Expanded(
          flex: 1,
          child: TabBarView(
            children: [
              itemsList2('Mobiles'),
              itemsList2("Cold Drinks"),
              itemsList2("Soap"),
              itemsList2("Electronics"),
              itemsList2("Computer and tablets"),
              itemsList2("Online Shopping"),
              itemsList2("Car"),
              itemsList2("Toothbrush"),
              itemsList2("Tea Coffee"),
              itemsList2("Blade"),
              itemsList2("Shaving Cream"),
              itemsList2("Shampoo"),
              itemsList2("Talcum Powder"),
              itemsList2("Milk"),
              itemsList2("Mobile Connection"),
              itemsList2("Textile"),
              itemsList2("Bikes"),
              itemsList2("Footwear"),
              itemsList2("Cloths"),
              itemsList2("Garments"),
              itemsList2("Watches"),
              itemsList2("Child Food"),
              itemsList2("Salt"),
              itemsList2("Icecream"),
              itemsList2("Biscut"),
              itemsList2("Ketchup"),
              itemsList2("Snacks"),
              itemsList2("water"),
              itemsList2("tonic"),
              itemsList2("oil"),
              itemsList2("Washing Powder"),
              itemsList2("Cosmetics"),
              itemsList2("Pen"),
            ],
            controller: _productController,
          ),
        ),
      ],
    );
  }

  Widget appBar() {
    return Column(
      children: <Widget>[
        TabBar(
            isScrollable: true,
            controller: _appController,
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.white,
            tabs: appList),
        Expanded(
          flex: 1,
          child: TabBarView(
            children: [
              itemList('Social'),
              itemList('Chatting'),
              itemList('Shopping'),
              itemList('Scanning'),
              itemList('Office'),
              itemList('Music'),
              itemList('Browsers'),
              itemList('Games'),
              itemList('Security'),
              itemList('News'),
              itemList('Finance'),
              itemList('Mail'),
              itemList('Utility'),
              itemList('Video Calling'),
              itemList('File Sharing'),
              itemList('Video Editing'),
              itemList('Photo Editing'),
            ],
            controller: _appController,
          ),
        ),
      ],
    );
  }

  Widget itemList(String item) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2;
    final double itemWidth = size.width / 2;

    var list1 = StreamBuilder(
      stream: itemsRef.document('Apps').collection(item).snapshots(),
      builder: (context, snapshot) {
        return (snapshot.hasData && snapshot.data.documents.length > 0)
            ? Expanded(
                child: GridView.count(
                crossAxisCount: context.isMobile ? 1 : 3,
                physics: ScrollPhysics(),
                childAspectRatio:
                    context.isMobile ? 2 : (itemWidth / itemHeight),
                children:
                    List.generate(snapshot.data.documents.length, (index) {
                  DocumentSnapshot doc = snapshot.data.documents[index];
                  Item itemModel = Item.fromDocument(doc);
                  return Item2(item: itemModel);
                }),
                shrinkWrap: true,
              ))
            : Container(
                child: Text('No Data Available'),
              );
      },
    );

    var list2 = StreamBuilder(
      stream: itemsAppsRef.document('Apps').collection(item).snapshots(),
      builder: (context, snapshot) {
        return (snapshot.hasData && snapshot.data.documents.length > 0)
            ? ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot doc = snapshot.data.documents[index];
                  return ItemApp(name: doc['name'], image: doc['image']);
                },
                shrinkWrap: true,
              )
            : Container(
                child: Text('No Data Available'),
              );
      },
    );

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Chinese Apps Banned',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            child: list2,
            alignment: Alignment.centerLeft,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Alternatives',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          list1
        ],
      ),
    );
  }

  Widget itemsList2(String item) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2;
    final double itemWidth = size.width / 2;

    var list1 = StreamBuilder(
      stream: itemsRef.document('Products').collection(item).snapshots(),
      builder: (context, snapshot) {
        return (snapshot.hasData && snapshot.data.documents.length > 0)
            ? Expanded(
                child: GridView.count(
                crossAxisCount: context.isMobile ? 1 : 3,
                childAspectRatio:
                    context.isMobile ? 2 : (itemWidth / itemHeight),
                children:
                    List.generate(snapshot.data.documents.length, (index) {
                  DocumentSnapshot doc = snapshot.data.documents[index];
                  ItemProd itemModel = ItemProd.fromDocument(doc);
                  return Item1(item: itemModel);
                }),
                primary: false,
                shrinkWrap: true,
              ))
            : Container(
                child: Text('No Data Available'),
              );
      },
    );

    var list2 = StreamBuilder(
      stream: itemsAppsRef.document('Products').collection(item).snapshots(),
      builder: (context, snapshot) {
        return (snapshot.hasData && snapshot.data.documents.length > 0)
            ? Expanded(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot doc = snapshot.data.documents[index];
                  return ItemApp(name: doc['name'], image: doc['image']);
                },
                primary: false,
                shrinkWrap: true,
              ))
            : Container(
                child: Text('No Data Available'),
              );
      },
    );

    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Chinese Products',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            child: list2,
            alignment: Alignment.centerLeft,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Alternatives',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          list1,
        ],
      ),
    );
  }
}
