import 'package:flutter/material.dart';
import 'package:flutter_practice_lab/BMIcalculator/home_screen/input_page.dart';
import 'package:flutter_practice_lab/Destiny_Changer/destin_main.dart';
import 'package:flutter_practice_lab/Magic8Balls/magic8balls.dart';
import 'package:flutter_practice_lab/Xylophone/xylophone.dart';
import 'package:flutter_practice_lab/diceGame/game.dart';
import 'package:flutter_practice_lab/visiting_card.dart';

import '../Quizler/quiz_main.dart';
import '../homepage.dart';

class RoutesManager {
  static const homepage = '/';
  static const visitingCardPage = '/visitingcard';
  static const xylophonePage = '/xylophone';
  static const dicePage = '/dice';
  static const magicBallsPage = '/magicballs';
  static const quizlerPage = '/quizler';
  static const destinyPage = '/destiny';
  static const bmiPage = '/bmi';

  static Route<dynamic> generalRoutes(RouteSettings settings) {
    switch (settings.name) {
      case (homepage):
        return MaterialPageRoute(
          builder: (context) => const MyHome(),
        );

      case (visitingCardPage):
        return MaterialPageRoute(
          builder: (context) => const VisitingCard(),
        );
      case (xylophonePage):
        return MaterialPageRoute(
          builder: (context) => XylophonePlay(),
        );
      case (dicePage):
        return MaterialPageRoute(
          builder: (context) => const DicePlay(),
        );
      case (magicBallsPage):
        return MaterialPageRoute(
          builder: (context) => MagicBalls(),
        );
      case (quizlerPage):
        return MaterialPageRoute(
          builder: (context) => QuizPage(),
        );
      case (destinyPage):
        return MaterialPageRoute(
          builder: (context) => DestinyChooser(),
        );
      case (bmiPage):
        return MaterialPageRoute(
          builder: (context) => BmiCalculator(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const MyHome(),
        );
    }
  }
}
