// ignore_for_file: prefer_const_constructors, file_names, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/dimension.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color textColor;
  final dynamic txtWeight;
  BigText({
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
          fontSize: 20,
          fontWeight: txtWeight,
          color: textColor),
    );
  }
}
