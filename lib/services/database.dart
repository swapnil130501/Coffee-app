import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  //collection refernce

  final CollectionReference brewCollection = FirebaseFirestore.instance.collection('brews');
}