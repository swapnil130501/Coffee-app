import 'package:flutter/material.dart';
import 'package:coffee_app/shared/constants.dart';
class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {


  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  //form values
  late String _currentName;
  late String _currentSugars;
  late int _currentStrength;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
              'Update your coffee settings',
            style: TextStyle(fontSize: 18.0),
       ),
          SizedBox(height: 20),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => val!.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          SizedBox(height: 20),
          //drop down
          DropdownButtonFormField<String>(
            decoration: textInputDecoration,
            // value: _currentSugars ?? '0' ,
            items: sugars.map((sugar) {
              return DropdownMenuItem(
                value: sugar,
                child: Text("$sugar sugars"),
              );
            }).toList(),
            onChanged: (val) => setState(() => _currentSugars = val!),
          ),
          //slider
          RaisedButton(
            color: Colors.pink[400],
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentSugars);
              print(_currentStrength);
            },
          ),
        ],
      ),
    );
  }
}
