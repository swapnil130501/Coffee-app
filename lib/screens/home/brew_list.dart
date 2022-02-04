import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class BrewList
    extends StatefulWidget {
  const BrewList({Key? key}) : super(key: key);

  @override
  _BrewLisState createState() => _BrewLisState();
}

class _BrewLisState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {

    final brews = Provider.of<QuerySnapshot>(context);
    //print(brews.docs);
    for(var doc in brews.docs){
      print(doc.data());
    }
    return Container();
  }
}
