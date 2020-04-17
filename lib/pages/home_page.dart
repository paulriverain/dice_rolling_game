import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget buttonMaker(icon, String titleText, String pathWay) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        color: Colors.teal[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Icon(icon),
            ),
            Text(
              titleText,
              style: TextStyle(
                  color: const Color.fromRGBO(37, 8, 86, 1),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        onPressed: () {
          print('button was pressed i think');
          Navigator.of(context).pushNamed(pathWay);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 58.0, right: 58.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buttonMaker(Icons.videogame_asset, 'Play Game', '/sign_in_page'),
            buttonMaker(Icons.history, 'Score', '/score_page'),
            buttonMaker(Icons.settings, 'Settings', '/settings'),
            buttonMaker(Icons.gamepad, 'Game Rules', '/game_rules'),
          ],
        ),
      ),
    );
  }
}
