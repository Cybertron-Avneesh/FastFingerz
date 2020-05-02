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
  static Color disableColor = Colors.white24;
  Stopwatch stopwatch = new Stopwatch();
  static var finalTime = '';
  static var tempRunner = 1;
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
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(0);
                          },
                          child: Text(
                            shuffled[0].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[0],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(1);
                          },
                          child: Text(
                            shuffled[1].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[1],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(9);
                          },
                          child: Text(
                            shuffled[9].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[9],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(10);
                          },
                          child: Text(
                            shuffled[10].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[10],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(2);
                          },
                          child: Text(
                            shuffled[2].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[2],
                          splashColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(12);
                          },
                          child: Text(
                            shuffled[12].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[12],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(11);
                          },
                          child: Text(
                            shuffled[11].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[11],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(3);
                          },
                          child: Text(
                            shuffled[3].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[3],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(4);
                          },
                          child: Text(
                            shuffled[4].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[4],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(5);
                          },
                          child: Text(
                            shuffled[5].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[5],
                          splashColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(6);
                          },
                          child: Text(
                            shuffled[6].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[6],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(7);
                          },
                          child: Text(
                            shuffled[7].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[7],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(8);
                          },
                          child: Text(
                            shuffled[8].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[8],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(14);
                          },
                          child: Text(
                            shuffled[14].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[14],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(13);
                          },
                          child: Text(
                            shuffled[13].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[13],
                          splashColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(15);
                          },
                          child: Text(
                            shuffled[15].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[15],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(16);
                          },
                          child: Text(
                            shuffled[16].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[16],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(17);
                          },
                          child: Text(
                            shuffled[17].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[17],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(18);
                          },
                          child: Text(
                            shuffled[18].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[18],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(19);
                          },
                          child: Text(
                            shuffled[19].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[19],
                          splashColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(20);
                          },
                          child: Text(
                            shuffled[20].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[20],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(21);
                          },
                          child: Text(
                            shuffled[21].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[21],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(22);
                          },
                          child: Text(
                            shuffled[22].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[22],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(23);
                          },
                          child: Text(
                            shuffled[23].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[23],
                          splashColor: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                        child: FlatButton(
                          onPressed: () {
                            doChanges(24);
                          },
                          child: Text(
                            shuffled[24].toString(),
                            style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          color: currColor[24],
                          splashColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Center(
                        child: Text('Time  ',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Center(
                          child: Text('Elapsed:',
                              style: TextStyle(color: Colors.white))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Center(
                        child: Text(finalTime,
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Center(
                          child: Text(' milli sec',
                              style: TextStyle(color: Colors.white))),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                      child: Center(
                        child: IconButton(icon: Icon(Icons.refresh), onPressed: (){
                          main();
                        },
                        color: Colors.white,
                        splashColor: Colors.amberAccent,),
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
