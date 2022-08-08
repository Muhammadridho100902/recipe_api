// ignore_for_file: prefer_const_constructors, file_names, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/dimension.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color textColor;
  const SmallText({
    Key? key,
    required this.text,
    required this.textColor,
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
        fontSize: 12
      ),
    );
  }
}
