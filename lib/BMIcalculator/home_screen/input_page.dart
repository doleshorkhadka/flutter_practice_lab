// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../results/result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/constants.dart';
import '../components/reused_card.dart';
import '../components/bmicalculate.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 74;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                BoxContainer(
                  color: selectedGender == Gender.male
                      ? kActiveColor
                      : kBoxPrimaryColor,
                  childBox: IconContainer(
                    icon: FontAwesomeIcons.mars,
                    iconSize: 80.0,
                    inBetweenGap: 15.0,
                    text: 'MALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
                BoxContainer(
                  color: selectedGender == Gender.female
                      ? kActiveColor
                      : kBoxPrimaryColor,
                  childBox: IconContainer(
                    icon: FontAwesomeIcons.venus,
                    iconSize: 80.0,
                    inBetweenGap: 15.0,
                    text: 'FEMALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              ],
            ),
          ),
          BoxContainer(
            color: kBoxPrimaryColor,
            childBox: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kLargeTextStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      trackHeight: 1,
                      thumbColor: kButtomContainerColor),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    inactiveColor: kActiveColor,
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                BoxContainer(
                  color: kBoxPrimaryColor,
                  childBox: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kLargeTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MiniFloatingButton(
                            icon: FontAwesomeIcons.minus,
                            onClick: () {
                              setState(() {
                                weight--;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                weight = weight - 2;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MiniFloatingButton(
                            icon: FontAwesomeIcons.plus,
                            onClick: () {
                              setState(() {
                                weight++;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                weight = weight + 2;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                BoxContainer(
                  color: kBoxPrimaryColor,
                  childBox: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kLargeTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MiniFloatingButton(
                            icon: FontAwesomeIcons.minus,
                            onClick: () {
                              setState(() {
                                age--;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                age = age - 2;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MiniFloatingButton(
                            icon: FontAwesomeIcons.plus,
                            onClick: () {
                              setState(() {
                                age++;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                age = age + 2;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SumbitButton(
            text: 'CALCULATE',
            onClick: () {
              BMIcalculate calc = BMIcalculate(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(calc: calc);
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
