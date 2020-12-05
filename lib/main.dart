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
  @override
  Widget build(BuildContext context) {
    var LeftButtonClicked = 3;
    var RightButtonClicked = 6;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Lest button pressed');
              },
              child: Image.asset('images/dice$RightButtonClicked.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Lest button pressed');
              },
              child: Image.asset('images/dice$LeftButtonClicked.png'),
            ),
          ),
        ],
      ),
    );
  }
}
