// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  const AppIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 20,
          color: Colors.black54,
        ),
      ),
    );
  }
}
