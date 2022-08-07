// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  const AppIcon({
    Key? key,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    this.iconSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        // color: Colors.white54,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          // color: Colors.black54,
          color: iconColor,
        ),
      ),
    );
  }
}
