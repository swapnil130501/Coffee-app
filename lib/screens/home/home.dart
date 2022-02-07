import 'package:coffee_app/models/brew.dart';
import 'package:coffee_app/screens/home/brew_list.dart';
import 'package:coffee_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/services/auth.dart';
import 'package:coffee_app/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:coffee_app/services/database.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {

    void _showSettingsPanel(){
      showModalBottomSheet(context: context, builder: (context)
      {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: Text('Bottom sheet'),
        );
      });
    }
    return StreamProvider<List<Brew>?>.value(
      value: DatabaseService(uid: '').brews,
      initialData: null,
      child: Scaffold(
         backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Brew Crew'),
          //centerTitle: true,
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: [
            FlatButton.icon(
                icon: Icon(Icons.person),
                onPressed: () async {
                  await _auth.signOut();
                },
                label: Text('logout')
            ),
            FlatButton.icon(
                icon: Icon(Icons.settings),
                onPressed: () => _showSettingsPanel(),
                label: Text('settings')
            ),

          ],
        ),
        body: BrewList(),
      ),
    );
  }
}
