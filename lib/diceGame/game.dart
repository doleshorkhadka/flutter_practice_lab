import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dice Play')),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: DicePlay(),
    ),
  ));
}

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
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('assets/dice_play/dice$leftDiceValue.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('assets/dice_play/dice$rightDiceValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}
