import 'package:flutter/material.dart';

class VisitingCard extends StatelessWidget {
  const VisitingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('visitingcard/pp.png'),
              ),
              const Text(
                'Doleshor Khadka',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Pacifico'),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 15,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Padding(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      // ignore: prefer_const_constructors
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+977 9810 479314',
                        style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )),
              Card(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Padding(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      // ignore: prefer_const_constructors
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'doleshorkhad@gmail.com',
                        style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
