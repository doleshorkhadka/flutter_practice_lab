// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'destiny_brain.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/destiny_changer/background.png"),
                  opacity: 0.6,
                  fit: BoxFit.cover),
            ),
            child: DestinyChooser(),
          ),
        ),
      ),
    );
  }
}

DestinyBrain destinyBrain = DestinyBrain();

class DestinyChooser extends StatefulWidget {
  DestinyChooser({Key? key}) : super(key: key);

  @override
  State<DestinyChooser> createState() => _DestinyChooserState();
}

class _DestinyChooserState extends State<DestinyChooser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                destinyBrain.getStoryText(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red.shade900,
            ),
            onPressed: () {
              setState(() {
                destinyBrain.alterTheText();
              });
            },
            child: Text(
              destinyBrain.getChoise1Text(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green.shade900,
            ),
            onPressed: () {
              setState(() {
                destinyBrain.alterTheText();
              });
            },
            child: Text(
              destinyBrain.getChoise2Text(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
