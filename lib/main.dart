import 'package:fastfingerz/number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   static List<dynamic> btnIntLabel = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25'
  ];
  var shuffled = btnIntLabel.toList()..shuffle();

  static List<Color> currColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
    void doChanges(int i) {
    if (shuffled[i].toString() == tempRunner.toString() && tempRunner == 1) {
      shuffled[i] = '';
      tempRunner++;
      setState(() {
        currColor[i] = disableColor;
      });
      stopwatch.start();
    } else if (shuffled[i].toString() == tempRunner.toString() &&
        tempRunner == 25) {
      shuffled[i] = '';
      tempRunner++;
      stopwatch.stop();

      setState(() {
        currColor[i] = disableColor;
        finalTime = stopwatch.elapsedMilliseconds.toString();
      });
    } else if (shuffled[i].toString() == tempRunner.toString()) {
      shuffled[i] = '';
      tempRunner++;
      setState(() {
        currColor[i] = disableColor;
      });
    }
  }

  static Color disableColor = Colors.white24;
  Stopwatch stopwatch = new Stopwatch();
  static var finalTime = '';
  static var tempRunner = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Center(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '☝ Fast Fingerz 👆',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Charmonman',
                    ),
                  ),
                  Table(
                    border: TableBorder.all(style: BorderStyle.none),
                    children: <TableRow>[
                      TableRow(
                        children: <Widget>[
                          Number(0,doChanges,shuffled,currColor),
                          Number(1,doChanges,shuffled,currColor),
                          Number(9,doChanges,shuffled,currColor),
                          Number(10,doChanges,shuffled,currColor),
                          Number(2,doChanges,shuffled,currColor),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Number(12,doChanges,shuffled,currColor),
                          Number(11,doChanges,shuffled,currColor),
                          Number(3,doChanges,shuffled,currColor),
                          Number(4,doChanges,shuffled,currColor),
                          Number(5,doChanges,shuffled,currColor),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Number(6,doChanges,shuffled,currColor),
                          Number(7,doChanges,shuffled,currColor),
                          Number(8,doChanges,shuffled,currColor),
                          Number(14,doChanges,shuffled,currColor),
                          Number(13,doChanges,shuffled,currColor),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Number(15,doChanges,shuffled,currColor),
                          Number(16,doChanges,shuffled,currColor),
                          Number(17,doChanges,shuffled,currColor),
                          Number(18,doChanges,shuffled,currColor),
                          Number(19,doChanges,shuffled,currColor),
                        ],
                      ),
                      TableRow(
                        children: <Widget>[
                          Number(20,doChanges,shuffled,currColor),
                          Number(21,doChanges,shuffled,currColor),
                          Number(22,doChanges,shuffled,currColor),
                          Number(23,doChanges,shuffled,currColor),
                          Number(24,doChanges,shuffled,currColor),
                        ],
                      ),
                      TableRow(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                          child: Center(
                            child: Text('Time  ',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                          child: Center(
                              child: Text('Elapsed:',
                                  style: TextStyle(color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                          child: Center(
                            child: Text(finalTime,
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                          child: Center(
                              child: Text(' milli sec',
                                  style: TextStyle(color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.refresh),
                              onPressed: () {
                                main();
                              },
                              color: Colors.white,
                              splashColor: Colors.amberAccent,
                            ),
                          ),
                        )
                      ])
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
