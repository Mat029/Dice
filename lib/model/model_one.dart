import 'package:flutter/material.dart';
import 'package:deapp/widget/dice_number.dart';
import 'package:deapp/widget/dice_side.dart';

class One extends StatelessWidget {
  const One(
      {Key? key,
      required this.sides,
      required this.c,
      required this.x,
      required this.number})
      : super(key: key);
  final int sides;
  final List<double> c;
  final double x;
  final List<int> number;

  @override
  Widget build(BuildContext context) {
    if (sides <= 6) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SidesImage(number: number[0], x: x),
          SizedBox(
            height: 50,
          ),
        ],
      );
    } else {
      return Sides(number: number[0], c: c[0], x: x);
    }
  }
}
