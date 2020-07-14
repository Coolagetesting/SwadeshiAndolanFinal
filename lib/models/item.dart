import 'package:cloud_firestore/cloud_firestore.dart';

class Item{
  final String name, rating, usersNo, type, imageUrl, ios, android;

  Item({this.name, this.rating, this.usersNo, this.type, this.imageUrl, this.ios, this.android});

  factory Item.fromDocument(DocumentSnapshot doc){
    return Item(
      name: doc['name'],
      rating: doc['rating'],
      usersNo : doc['usersNo'],
      type : doc['type'],
      imageUrl: doc['imageUrl'],
      android: doc['android'],
      ios: doc['ios'],
    );
  }
}