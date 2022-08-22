import 'dart:math';
import 'package:flutter/material.dart';

class DicePlay extends StatefulWidget {
  const DicePlay({Key? key}) : super(key: key);

  @override
  State<DicePlay> createState() => _DicePlayState();
}

class _DicePlayState extends State<DicePlay> {
  var leftDiceValue = 1;
  var rightDiceValue = 1;

  // ignore: non_constant_identifier_names
  void ChangeDiceFace() {
    setState(() {
      leftDiceValue = Random().nextInt(6) + 1;
      rightDiceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dice Play')),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset('assets/dice-play/dice$leftDiceValue.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset('assets/dice-play/dice$rightDiceValue.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
