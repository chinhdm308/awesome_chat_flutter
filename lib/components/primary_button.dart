import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color = color_4356B4,
      this.padding = const EdgeInsets.only(top: 16, bottom: 17),
      this.isActive = false})
      : super(key: key);

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      padding: padding,
      color: this.isActive ? color_4356B4 : color_CACACA,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
