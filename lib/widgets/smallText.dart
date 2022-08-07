// ignore_for_file: prefer_const_constructors, file_names, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double ?sizetxt;
  const SmallText({
    Key? key,
    required this.text,
    required this.textColor, this.sizetxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}",
      // maxLines: 1,
      // overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: sizetxt
      ),
    );
  }
}
