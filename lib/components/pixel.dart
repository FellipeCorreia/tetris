import 'package:flutter/material.dart';

class Pixel extends StatelessWidget {
  var color;

  Pixel({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0.9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
    );
  }
}