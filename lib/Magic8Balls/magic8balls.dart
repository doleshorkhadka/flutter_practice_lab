import 'dart:math';
import 'package:flutter/material.dart';

class MagicBalls extends StatefulWidget {
  MagicBalls({Key? key}) : super(key: key);

  @override
  State<MagicBalls> createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  var ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Magic Balls')),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('assets/magic-8-balls/ball$ballNum.png'),
        ),
      ),
    );
  }
}
