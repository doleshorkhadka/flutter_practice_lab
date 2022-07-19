import 'package:flutter/material.dart';
import 'package:flutter_practice_lab/BMIcalculator/components/bmicalculate.dart';
import 'package:flutter_practice_lab/Quizler/quiz_brain.dart';
import 'package:flutter_practice_lab/diceGame/game.dart';
import 'visiting_card.dart';
import 'BMIcalculator/main.dart';
import 'Destiny_Changer/destin_main.dart';
import 'Magic8Balls/magic8balls.dart';
import 'Quizler/quiz_main.dart';
import 'Xylophone/xylophone.dart';

void main(List<String> args) {
  return runApp(PracticeMain());
}

class PracticeMain extends StatefulWidget {
  PracticeMain({Key? key}) : super(key: key);

  @override
  State<PracticeMain> createState() => _PracticeMainState();
}

class _PracticeMainState extends State<PracticeMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/visitingcard': (context) => VisitingCard(),
        '/xylophone': (context) => XylophonePlay(),
        '/dice': (context) => DicePlay(),
        '/magicballs': (context) => MagicBalls(),
        '/quizler': (context) => QuizPage(),
        '/destiny': (context) => DestinyChooser(),
        '/bmi': (context) => BMIcalculator(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Practice Application',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              newMethod(Text('Visiting Card'),
                  Navigator.pushNamed(context, '/visitingcard')),
              SizedBox(height: 10),
              newMethod(Text('Xylophone App'),
                  Navigator.pushNamed(context, '/xylophone')),
              SizedBox(height: 10),
              newMethod(
                Text('Dice Game'),
                Navigator.pushNamed(context, '/dice'),
              ),
              SizedBox(height: 10),
              newMethod(Text('Magic 8 Balls'),
                  Navigator.pushNamed(context, '/magicballs')),
              SizedBox(height: 10),
              newMethod(Text('Quizler App'),
                  Navigator.pushNamed(context, '/quizler')),
              SizedBox(height: 10),
              newMethod(Text('Destiny Changer Play'),
                  Navigator.pushNamed(context, '/destiny')),
              SizedBox(height: 10),
              newMethod(Text('BMI Calculator App'),
                  Navigator.pushNamed(context, '/bmi')),
            ],
          ),
        ),
      ),
    );
  }

  Widget newMethod(Widget child, Future<Object?> nav) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {
          nav;
        },
        fillColor: Colors.blueGrey,
        child: child,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
