// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.inBetweenGap,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final double iconSize;
  final double inBetweenGap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: inBetweenGap,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

class BoxContainer extends StatelessWidget {
  final Color color;
  final Widget? childBox;
  final VoidCallback? onPress;
  BoxContainer({required this.color, this.childBox, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: childBox,
        ),
      ),
    );
  }
}

class MiniFloatingButton extends StatelessWidget {
  MiniFloatingButton({
    Key? key,
    required this.icon,
    required this.onClick,
    required this.onLongPress,
  }) : super(key: key);

  IconData icon;
  final VoidCallback onClick;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF1C1F32),
      onPressed: onClick,
      onLongPress: onLongPress,
      disabledElevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}

class SumbitButton extends StatelessWidget {
  SumbitButton({
    Key? key,
    required this.text,
    required this.onClick,
  }) : super(key: key);
  VoidCallback onClick;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color: kButtomContainerColor,
        height: kButtomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: kLastButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
