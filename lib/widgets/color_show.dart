import 'package:flutter/material.dart';

class ColorShow extends StatelessWidget {
  final Color color;
  const ColorShow({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      color: color.withOpacity(1),
    );
  }
}