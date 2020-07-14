import 'package:cloud_firestore/cloud_firestore.dart';

class ItemProd{
  final String name,imageUrl,type;

  ItemProd({this.name, this.type, this.imageUrl,});

  factory ItemProd.fromDocument(DocumentSnapshot doc){
    return ItemProd(
      name: doc['name'],
      type : doc['type'],
      imageUrl: doc['imageUrl'],
    );
  }
}