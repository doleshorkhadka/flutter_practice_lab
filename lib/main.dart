// import 'Xylophone/xylophone.dart';
// import 'PracticeModels/visiting_card.dart';
// import 'screens/home_screen.dart';
// import 'Magic3balls/magic8balls.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'BMIcalculator/input_page.dart';
// import 'package:flutter_practice_lab/Magic8Balls/magic8balls.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
