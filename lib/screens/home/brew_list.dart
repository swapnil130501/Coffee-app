import 'package:coffee_app/models/brew.dart';
import 'package:flutter/material.dart';
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

    final brews = Provider.of<List<Brew>>(context);
    brews.forEach((brew){
     print(brew.name);
     print(brew.sugars);
     print(brew.strength);
    });
    return Container();
  }
}
