import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart' as WebFirebase;
import 'package:firebase/firestore.dart' as WebFirestore;

WebFirestore.Firestore webFirestore = WebFirebase.firestore();

final WebFirestore.DocumentReference docRef = webFirestore.collection('ItemsCategory').doc('Apps');

final CollectionReference itemsRef = Firestore.instance.collection('ItemsCategory');
final CollectionReference itemsAppsRef = Firestore.instance.collection('ItemsApps');