import 'package:coffee_app/models/user.dart';
import 'package:coffee_app/screens/authenticate/authenticate.dart';
import 'package:coffee_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffee_app/services/auth.dart';
class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final user= Provider.of<Customer?>(context);
    if(user==null)
      {
        return Authenticate();
      }
    else
      {
        return Home();
      }


    //return either home or authenticate widget
    return Authenticate();
  }
}
