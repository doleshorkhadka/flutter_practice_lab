import 'package:flutter/material.dart';
import 'package:flutter_practice_lab/routes/routes.dart';

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
      initialRoute: RoutesManager.homepage,
      onGenerateRoute: RoutesManager.generalRoutes,
      // routes: {
      //   '/': (context) => const MyHome(),
      //   '/visitingcard': (context) => const VisitingCard(),
      //   '/xylophone': (context) => XylophonePlay(),
      //   '/dice': (context) => const DicePlay(),
      //   '/magicballs': (context) => MagicBalls(),
      //   '/quizler': (context) => QuizPage(),
      //   '/destiny': (context) => DestinyChooser(),
      //   '/bmi': (context) => BmiCalculator(),
      // },
    );
  }
}


            // newMethod(const Text('Visiting Card'),
            //     Navigator.pushNamed(context, '/visitingcard')),
            // const SizedBox(height: 10),
            // newMethod(const Text('Xylophone App'),
            //     Navigator.pushNamed(context, '/xylophone')),
            // const SizedBox(height: 10),
            // newMethod(
            //   const Text('Dice Game'),
            //   Navigator.pushNamed(context, '/dice'),
            // ),
            // const SizedBox(height: 10),
            // newMethod(const Text('Magic 8 Balls'),
            //     Navigator.pushNamed(context, '/magicballs')),
            // const SizedBox(height: 10),
            // newMethod(const Text('Quizler App'),
            //     Navigator.pushNamed(context, '/quizler')),
            // const SizedBox(height: 10),
            // newMethod(const Text('Destiny Changer Play'),
            //     Navigator.pushNamed(context, '/destiny')),
            // const SizedBox(height: 10),
            // newMethod(const Text('BMI Calculator App'),
            //     Navigator.pushNamed(context, '/bmi')),