import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RulesPage extends StatefulWidget {
  @override
  _RulesPageState createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          border: null,
          actionsForegroundColor: Color.fromRGBO(37, 8, 86, 1),
          backgroundColor: Colors.teal,
          middle: Text('Game Rules',
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
