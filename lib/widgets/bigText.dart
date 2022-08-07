// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/color.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color textColor;
  final dynamic txtWeight;
  const BigText({
    Key? key,
    required this.text,
    required this.textColor,
    this.txtWeight = FontWeight.w500 ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: screenWidth / 20,
          fontWeight: txtWeight,
          color: textColor),
    );
  }
}
