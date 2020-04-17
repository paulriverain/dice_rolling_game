import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// ============= Dice App ==============
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          border: null,
          actionsForegroundColor: Color.fromRGBO(37, 8, 86, 1),
          backgroundColor: Colors.teal,
          middle: Text('Ceelo Roller',
              style: TextStyle(
                  color: const Color.fromRGBO(37, 8, 86, 1),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold))),
      child: Container(
        color: Colors.teal[400],
        child: DiceRoller(),
      ),
    );
  }
}

class DiceRoller extends StatefulWidget {
  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int leftNum = 1;
  int midNum = 1;
  int rightNum = 1;

  var rollTracker = [];
  String newTracker = '';

  String comment = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Row(
                        // -- dice pics --
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 110.0,
                              width: 110.0,
                              child: Image.asset('images/dice$leftNum.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 110.0,
                              width: 110.0,
                              child: Image.asset('images/dice$midNum.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 110.0,
                              width: 110.0,
                              child: Image.asset('images/dice$rightNum.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: SingleChildScrollView(
                        child: Padding(
                          // --- score keeper ---
                          padding: const EdgeInsets.symmetric(
                            vertical: 30.0,
                          ),
                          child: FloatingActionButton(
                            child: Icon(Icons.loop),
                            backgroundColor: Colors.teal[800],
                            onPressed: () {
                              var arr = [];
                              setState(() {
                                leftNum = Random().nextInt(6) + 1;
                                midNum = Random().nextInt(6) + 1;
                                rightNum = Random().nextInt(6) + 1;

                                arr = [leftNum, midNum, rightNum];
                              });

                              if (leftNum == rightNum && rightNum == midNum) {
                                comment = 'Tipple Roll!';
                                rollTracker.insert(
                                    0, '\n $leftNum  / $midNum  / $rightNum ');
                              } else if (leftNum == midNum) {
                                comment =
                                    "Your # is $rightNum backed with $midNum's!";
                                rollTracker.insert(
                                    0, '\n $leftNum  / $midNum  / $rightNum ');
                              } else if (midNum == rightNum) {
                                comment =
                                    "Your # is $leftNum backed with $rightNum's!";
                                rollTracker.insert(
                                    0, '\n $leftNum  / $midNum  / $rightNum ');
                              } else if (leftNum == rightNum) {
                                comment =
                                    "Your # is $midNum backed with $rightNum's!";
                                rollTracker.insert(
                                    0, '\n $leftNum  / $midNum  / $rightNum ');
                              } else {
                                comment = 'Roll Again';
                              }

                              if (arr.contains(4) &&
                                  arr.contains(5) &&
                                  arr.contains(6)) {
                                comment = 'Winning Roll!';
                                rollTracker.insert(
                                    0, '\n $leftNum  / $midNum  / $rightNum ');
                              }
                              if (arr.contains(1) &&
                                  arr.contains(2) &&
                                  arr.contains(3)) {
                                comment = 'Losing Roll!';
                                rollTracker.insert(
                                    0, '\n $leftNum  / $midNum  / $rightNum ');
                              }
                              newTracker = rollTracker
                                  .toString()
                                  .replaceAll('[', '')
                                  .replaceAll(']', '')
                                  .replaceAll(',', '');
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('$comment',
                          style: TextStyle(
                            color: Colors.teal[900],
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0,
                          )),
                    ),
                    Text(
                      'Left: $leftNum / Middle: $midNum / Right: $rightNum',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Newest: $newTracker',
                          maxLines: 6,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.teal[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                child: Text(
                  "Clear Game",
                  style: TextStyle(
                    color: Colors.teal[1000],
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    leftNum = 1;
                    midNum = 1;
                    rightNum = 1;
                  });
                  newTracker = rollTracker
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', '')
                      .replaceAll(',', '');
                  rollTracker = [];
                  newTracker = '';
                  comment = '';
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
