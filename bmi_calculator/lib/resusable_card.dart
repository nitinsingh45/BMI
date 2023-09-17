import 'package:flutter/material.dart';

class ReusableCode extends StatelessWidget {
  ReusableCode({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour, // Use the provided colour
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
