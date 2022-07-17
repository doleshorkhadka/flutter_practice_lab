// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import '/BMIcalculator/reused_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

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
              children: [],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                BoxContainer(
                  color: kBoxPrimaryColor,
                ),
                BoxContainer(
                  color: kBoxPrimaryColor,
                ),
              ],
            ),
          ),
          Container(
            color: kButtomContainerColor,
            height: kButtomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
