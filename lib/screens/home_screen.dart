import 'package:flutter/material.dart';

// ignore: unused_element
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('my_notes')),
        backgroundColor: Colors.blueGrey[900],
      ),
    ));
  }
}
