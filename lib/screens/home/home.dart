import 'package:coffee_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/services/auth.dart';
class Home extends StatelessWidget {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
