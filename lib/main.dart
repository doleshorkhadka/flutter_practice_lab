// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:practical_lab/PracticeModels/visiting_card.dart';
// import 'package:practical_lab/screens/home_screen.dart';

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
        body: Text('Ready for Next App'),
      ),
    );
  }
}
