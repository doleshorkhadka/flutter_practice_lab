// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_practice_lab/BMIcalculator/constants.dart';
import 'package:flutter_practice_lab/BMIcalculator/reused_card.dart';

class CalculateResult extends StatefulWidget {
  CalculateResult({Key? key}) : super(key: key);

  @override
  State<CalculateResult> createState() => _CalculateResultState();
}

enum Result { overweight, normal, underweight }

class _CalculateResultState extends State<CalculateResult> {
  double? bmi;
  Map<Result, String> prediction = {
    Result.overweight:
        'Try loosing some weight. It will be better if you do weight loosing exercises daily.',
    Result.normal: 'Your BMI looks normal.You are fine .',
    Result.underweight:
        'Try gaining some weight. It will be better if you do aerobic exercises daily.',
  };

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
                      'Result',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'BMI',
                      style: kLargeTextStyle,
                    ),
                    Text(
                      prediction[Result.overweight].toString(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SumbitButton(
            text: 'RE-CALCULATE',
            onClick: () {},
          )
        ],
      ),
    );
  }
}
