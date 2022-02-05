import 'package:coffee_app/models/brew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'brew_tile.dart';

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

    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return BrewTile(brew: brews[index]);
      },
    );
  }
}
