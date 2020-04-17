import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          border: null,
          actionsForegroundColor: Color.fromRGBO(37, 8, 86, 1),
          backgroundColor: Colors.teal,
          middle: Text('Settings',
              style: TextStyle(
                  color: const Color.fromRGBO(37, 8, 86, 1),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold))),
      child: Container(
        color: Colors.teal[400],
      ),
    );
  }
}
