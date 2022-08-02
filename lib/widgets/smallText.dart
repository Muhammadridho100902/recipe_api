// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color textColor;
  const SmallText({
    Key? key,required this.text,required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}",
      style: TextStyle(color: textColor, fontWeight: FontWeight.w400),
    );
  }
}
