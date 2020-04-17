//import 'package:flutter/material.dart';
//import 'dart:math';
//
//void main() {
//  runApp(
//    DiceApp(),
//  );
//}

import 'package:dice_rolling_game/route_placer/route_generator.dart';
import 'package:dice_rolling_game/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:path/path.dart';

//void main() =>
//    {
//      CupertinoApp(
//        debugShowCheckedModeBanner: false,
//        home: Scaffold(
//          body: Container(
//            child: SafeArea(
//              child: DiceApp(),
//            ),
//          ),
//        ),
//        theme: new CupertinoThemeData(
//          primaryColor: new Color(0xff6823b6),
//        ),
//      )
//  }

void main() {
  runApp(
    DiceApp(),
  );
}

class DiceApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      title: 'PVD Fest',
      theme: new CupertinoThemeData(
        primaryColor: new Color(0xff6823b6),
      ),

      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text('Ceelo Roller')),
          backgroundColor: Colors.teal[700],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            HomePage(),
          ],
        ),
      ),

//      home: HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.blueGrey,
//        appBar: AppBar(
//          title: Text('I Am Soooo Poor'),
//          backgroundColor: Colors.red[800],
//        ),
//        body: Center(
//            child: Column(
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(18.0),
//              child: Container(
//                  height: 100.0, width: 100.0, color: Colors.blueGrey[200]),
//            ),
//            Container(
//              height: 100.0,
//              width: 100.0,
//              margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
//              color: Colors.white,
//              child: Center(child: Text('Check out this jazz!')),
//            ),
//            Container(
//              height: 190.0,
//              width: 190.0,
//              decoration: new BoxDecoration(
//                  shape: BoxShape.circle,
//                  image: new DecorationImage(
//                      image: AssetImage('images/mePic2.jpg'))),
////              child: Image(
////                image: AssetImage('images/mePic2.jpg'),
////              ),
//            ),
//          ],
//        )),
//        floatingActionButton: FloatingActionButton(
//          backgroundColor: Colors.red,
//          child: Icon(Icons.add),
//        ),
//      ),
//    );
//  }
//}
//
//class ProfileApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//          backgroundColor: Colors.cyan[600],
//          appBar: AppBar(
//            backgroundColor: Colors.cyan[800],
//            title: Text("Paul Riverain's profile"),
//          ),
//          body: Center(
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Container(
//                  width: 100.0,
//                  height: 100.0,
//                  decoration: BoxDecoration(
//                    shape: BoxShape.circle,
//                    image: new DecorationImage(
//                        image: AssetImage('images/mePic3.jpg')),
//                    color: Colors.white,
//                  ),
//                ),
//                SizedBox(height: 10.0),
//                Container(
//                  width: 200.0,
//                  child: Center(
//                    child: Text(
//                      'Paul Riverain',
//                      style: TextStyle(
//                        fontSize: 40.0,
//                        fontWeight: FontWeight.bold,
//                        fontFamily: 'Pacifico',
//                        color: Colors.white,
//                      ),
//                    ),
//                  ),
//                ),
//                SizedBox(height: 10.0),
//                Container(
//                  width: 200.0,
//                  child: Center(
//                    child: Text(
//                      'Software Developer',
//                      textScaleFactor: 1.3,
//                      style: TextStyle(
//                        color: Colors.white,
//                      ),
//                    ),
//                  ),
//                ),
//                SizedBox(height: 10.0),
//                Container(
//                  width: 100.0,
//                  height: 1.0,
//                  decoration: BoxDecoration(
//                    shape: BoxShape.rectangle,
//                    color: Colors.white,
//                  ),
//                ), //Line spacer
//                SizedBox(height: 10.0),
//                Container(
//                  width: 300.0,
//                  height: 50.0,
//                  color: Colors.white,
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.only(left: 8.0),
//                        child: Icon(Icons.phone,
//                            size: 30, color: Colors.cyan[600]),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.only(left: 25.0),
//                        child: Text(
//                          '(914) 409-5555',
//                          textScaleFactor: 1.5,
//                          style: TextStyle(
//                            color: Colors.teal,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 10.0),
//                Container(
//                  width: 300.0,
//                  height: 50.0,
//                  color: Colors.white,
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.only(left: 8.0),
//                        child:
//                            Icon(Icons.mail, size: 30, color: Colors.cyan[600]),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.only(left: 25.0),
//                        child: Text(
//                          'P.A.Rivers@Gmail.com',
//                          textScaleFactor: 1.5,
//                          style: TextStyle(
//                            color: Colors.teal,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                )
//              ],
//            ),
//          )),
//    );
//  }
//}
//
//class RefactoredApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.teal,
//        body: SafeArea(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              CircleAvatar(
//                radius: 50.0,
//                backgroundImage: AssetImage('images/mePic3.jpg'),
//              ),
//              Text(
//                'Paul Riverain',
//                style: TextStyle(
//                  color: Colors.white,
//                  fontSize: 40.0,
//                  fontWeight: FontWeight.bold,
//                  fontFamily: 'Pacifico',
//                ),
//              ),
//              Text(
//                'SOFTWARE DEVELOPER',
//                style: TextStyle(
//                  color: Colors.teal.shade100,
//                  fontSize: 20.0,
//                  fontFamily: 'SourceSansPro',
//                  letterSpacing: 1.5,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//              SizedBox(
//                height: 20.0,
//                width: 160.0,
//                child: Divider(
//                  color: Colors.white,
//                ),
//              ),
//              Card(
//                color: Colors.white,
//                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                child: ListTile(
//                  leading: Icon(
//                    Icons.phone,
//                    color: Colors.teal,
//                  ),
//                  title: Text(
//                    '(914) 409-5555',
//                    style: TextStyle(
//                      color: Colors.teal,
//                      fontFamily: 'SourceSansPro',
//                      fontSize: 20.0,
//                    ),
//                  ),
//                ),
//              ),
//              Card(
//                color: Colors.white,
//                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                child: ListTile(
//                  leading: Icon(
//                    Icons.email,
//                    color: Colors.teal,
//                  ),
//                  title: Text(
//                    'P.A.Rivers@gmail.com',
//                    style: TextStyle(
//                      color: Colors.teal,
//                      fontFamily: 'SourceSansPro',
//                      fontSize: 20.0,
//                    ),
//                  ),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//// ============= Dice App ==============
//class DiceApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.teal,
//        appBar: AppBar(
//          title: Center(child: Text('Ceelo Roller')),
//          backgroundColor: Colors.teal[700],
//        ),
//        body: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            DicePage(),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class DicePage1 extends StatelessWidget {
//  int min = 1;
//  int max = 7;
//  var leftDiceNum = new Random();
//  var midDiceNum = new Random();
//  var rightDiceNum = new Random();
//  int leftNum = 1;
//  int midNum = 1;
//  int rightNum = 1;
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        Center(
//          child: Row(
//            children: <Widget>[
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    //void callback or anonymous function
//                    print('Left button clicked!!');
//                  },
//                  child: Image.asset('images/dice$leftNum.png'),
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    //void callback or anonymous function
//                    print('Middle button clicked!!');
//                  },
//                  child: Image.asset('images/dice$midNum.png'),
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    //void callback or anonymous function
//                    print('Right button clicked!!');
//                  },
//                  child: Image.asset('images/dice$rightNum.png'),
//                ),
//              ),
//            ],
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.symmetric(
//            vertical: 50.0,
//          ),
//          child: FloatingActionButton(
//            child: Icon(Icons.add),
//            onPressed: () {
//              //void callback or anonymous function
//              leftNum = min + leftDiceNum.nextInt(max - min);
//              midNum = min + rightDiceNum.nextInt(max - min);
//              rightNum = min + midDiceNum.nextInt(max - min);
//              print('left: $leftNum  mid: $midNum  right:$rightNum');
//              print('Plus Blue clicked!!');
//            },
//          ),
//        ),
//      ],
//    );
//  }
//}
//
//class DicePage extends StatefulWidget {
//  @override
//  _DicePageState createState() => _DicePageState();
//}
//
//class _DicePageState extends State<DicePage> {
//  int leftNum = 1;
//  int midNum = 1;
//  int rightNum = 1;
//
//  var rollTracker = [];
//  String newTracker = '';
//
//  String comment = '';
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        Center(
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.all(12.0),
//                child: Container(
//                  height: 110.0,
//                  width: 110.0,
//                  child: Image.asset('images/dice$leftNum.png'),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(12.0),
//                child: Container(
//                  height: 110.0,
//                  width: 110.0,
//                  child: Image.asset('images/dice$midNum.png'),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(12.0),
//                child: Container(
//                  height: 110.0,
//                  width: 110.0,
//                  child: Image.asset('images/dice$rightNum.png'),
//                ),
//              ),
//            ],
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.symmetric(
//            vertical: 30.0,
//          ),
//          child: FloatingActionButton(
//            child: Icon(Icons.loop),
//            backgroundColor: Colors.teal[800],
//            onPressed: () {
//              //void callback or anonymous function
//              var arr = [];
//              setState(() {
//                leftNum = Random().nextInt(6) + 1;
//                midNum = Random().nextInt(6) + 1;
//                rightNum = Random().nextInt(6) + 1;
//
////                leftNum = 1;
////                midNum = 3;
////                rightNum = 2;
//
//                arr = [leftNum, midNum, rightNum];
//              });
//
//              if (leftNum == rightNum && rightNum == midNum) {
//                comment = 'Tipple Roll!';
//                rollTracker.insert(0, '\n $leftNum  / $midNum  / $rightNum ');
//              } else if (leftNum == midNum) {
//                comment = "Your # is $rightNum backed with $midNum's!";
//                rollTracker.insert(0, '\n $leftNum  / $midNum  / $rightNum ');
//              } else if (midNum == rightNum) {
//                comment = "Your # is $leftNum backed with $rightNum's!";
//                rollTracker.insert(0, '\n $leftNum  / $midNum  / $rightNum ');
//              } else if (leftNum == rightNum) {
//                comment = "Your # is $midNum backed with $rightNum's!";
//                rollTracker.insert(0, '\n $leftNum  / $midNum  / $rightNum ');
//              } else {
//                comment = 'Roll Again';
//              }
//
//              if (arr.contains(4) && arr.contains(5) && arr.contains(6)) {
//                comment = 'Winning Roll!';
//                rollTracker.insert(0, '\n $leftNum  / $midNum  / $rightNum ');
//              }
//              if (arr.contains(1) && arr.contains(2) && arr.contains(3)) {
//                comment = 'Losing Roll!';
//                rollTracker.insert(0, '\n $leftNum  / $midNum  / $rightNum ');
//              }
//
////              rollTracker.insert(0, '\n $leftNum  / $midNum  / $rightNum ');
//              newTracker = rollTracker
//                  .toString()
//                  .replaceAll('[', '')
//                  .replaceAll(']', '')
//                  .replaceAll(',', '');
////              print('left: $leftNum  mid: $midNum  right: $rightNum');
//            },
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.symmetric(vertical: 10.0),
//          child: Text('$comment',
//              style: TextStyle(
//                color: Colors.teal[900],
//                fontFamily: 'SourceSansPro',
//                fontSize: 20.0,
//              )),
//        ),
//        Text(
//          'Left: $leftNum / Middle: $midNum / Right: $rightNum',
//          style: TextStyle(
//            color: Colors.teal[900],
//            fontFamily: 'SourceSansPro',
//            fontWeight: FontWeight.bold,
//            fontSize: 28.0,
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.all(10.0),
//          child: Center(
//            child: Text(
//              'Newest: $newTracker',
//              maxLines: 5,
//              style: TextStyle(
//                fontSize: 18.0,
//                color: Colors.teal[900],
//                fontWeight: FontWeight.bold,
//              ),
//            ),
//          ),
//        ),
//        RaisedButton(
//          child: Text(
//            "Clear Game",
//            style: TextStyle(
//              color: Colors.teal[1000],
//              fontSize: 18.0,
//            ),
//          ),
//          onPressed: () {
//            setState(() {
//              leftNum = 1;
//              midNum = 1;
//              rightNum = 1;
//            });
//            newTracker = rollTracker
//                .toString()
//                .replaceAll('[', '')
//                .replaceAll(']', '')
//                .replaceAll(',', '');
//            rollTracker = [];
//            newTracker = '';
//            comment = '';
//          },
//        ),
//      ],
//    );
//  }
//}
