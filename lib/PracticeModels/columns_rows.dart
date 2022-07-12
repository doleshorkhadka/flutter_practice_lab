import 'package:flutter/material.dart';

class TestContainers extends StatelessWidget {
  const TestContainers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Test Containers')),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: SafeArea(
                child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.teal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: 100,
                      color: Colors.red,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 100,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.yellow,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      color: Colors.blue,
                    ),
                  ]),
            ))));
  }
}
