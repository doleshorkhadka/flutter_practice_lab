// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_lab/BMIcalculator/components/bmicalculate.dart';
import '../components/constants.dart';
import '../components/reused_card.dart';
import '../home_screen/input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    Key? key,
    required this.calc,
  }) : super(key: key);

  BMIcalculate calc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBoxPrimaryColor,
        title: Center(
          child: Text(
            'BMI Calculator',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Your Result !',
                style: kLargeTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: kActiveColor,
                    borderRadius: BorderRadius.circular(
                      10,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      calc.getInterpretation()!.elementAt(1) == Result.normal
                          ? 'Normal'
                          : calc.getInterpretation()!.elementAt(1) ==
                                  Result.obese
                              ? 'Obese'
                              : calc.getInterpretation()!.elementAt(1) ==
                                      Result.overweight
                                  ? 'Overweight'
                                  : 'Underweight',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      calc.getInterpretation()!.elementAt(0).toString(),
                      style: kLargeTextStyle,
                    ),
                    Text(
                      calc.getInterpretation()!.elementAt(2).toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SumbitButton(
            text: 'RE-CALCULATE',
            onClick: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
