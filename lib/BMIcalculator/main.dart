// import 'Xylophone/xylophone.dart';
// import 'PracticeModels/visiting_card.dart';
// import 'screens/home_screen.dart';
// import 'Magic3balls/magic8balls.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'results/result_page.dart';
import 'home_screen/input_page.dart';
// import 'package:flutter_practice_lab/Magic8Balls/magic8balls.dart';

void main() {
  return runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: InputPage()),
    );
  }
}
