// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:my_recipe_api/widgets/smallText.dart';

class IconAndWidgets extends StatelessWidget {
  final String Text;
  final IconData iconData;
  final Color txtColor;
  final Color iconColor;
  const IconAndWidgets({
    Key? key,
    required this.Text,
    required this.iconData,
    required this.txtColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,
        color: iconColor,),
        SizedBox(
          width: 5,
        ),
        SmallText(text: Text, textColor: txtColor),
      ],
    );
  }
}
