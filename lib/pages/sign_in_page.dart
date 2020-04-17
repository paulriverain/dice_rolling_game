import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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

  Widget loginForm() {
    return Container(child: Text('Log in'));
  }

  Widget signUpForm() {
    return Container(child: Text('Create New Username'));
  }

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          border: null,
          actionsForegroundColor: Color.fromRGBO(37, 8, 86, 1),
          backgroundColor: Colors.teal,
          middle: Text('Sign In (optional)',
              style: TextStyle(
                  color: const Color.fromRGBO(37, 8, 86, 1),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold))),
      child: Column(
        children: <Widget>[
          loginForm(),
          signUpForm(),
          buttonMaker(Icons.videogame_asset, 'Play Game', '/game_mode'),
        ],
      ),
    );
  }
}
