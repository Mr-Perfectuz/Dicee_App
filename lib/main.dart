import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DiecePageState createState() => _DiecePageState();
}

class _DiecePageState extends State<DicePage> {
  var LeftButtonClicked = 1;
  var RightButtonClicked = 1;

  void buttonChanger() {
    setState(() {
      LeftButtonClicked = Random().nextInt(6) + 1;
      RightButtonClicked = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                buttonChanger();
              },
              child: Image.asset('images/dice$LeftButtonClicked.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                buttonChanger();
              },
              child: Image.asset('images/dice$RightButtonClicked.png'),
            ),
          ),
        ],
      ),
    );
  }
}
