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
