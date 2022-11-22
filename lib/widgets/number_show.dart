import 'package:flutter/material.dart';

class NumberShow extends StatelessWidget {
  final int number;
  const NumberShow({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Center(
        child: Text(
          "$number",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
