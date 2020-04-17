import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          border: null,
          actionsForegroundColor: Color.fromRGBO(37, 8, 86, 1),
          backgroundColor: Colors.teal,
          middle: Text('Score Keeper',
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
