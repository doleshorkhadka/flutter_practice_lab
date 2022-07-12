import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Magic Balls')),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: MagicBalls(),
      ),
    );
  }
}

class MagicBalls extends StatefulWidget {
  MagicBalls({Key? key}) : super(key: key);

  @override
  State<MagicBalls> createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  var ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      onPressed: () {
        setState(() {
          ballNum = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('assets/magic-8-balls/ball$ballNum.png'),
    ));
  }
}
