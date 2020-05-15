import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  final int x;
  final Function doChanges;
  final List<dynamic> shuffled;
  final List<dynamic> currColor;
  Number(this.x, this.doChanges, this.shuffled, this.currColor);
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: FlatButton(
        onPressed: () {
          widget.doChanges(widget.x);
        },
        child: Text(
          widget.shuffled[widget.x].toString(),
          style: TextStyle(
              color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        color: widget.currColor[widget.x],
        splashColor: Colors.yellow,
      ),
    );
  }
}