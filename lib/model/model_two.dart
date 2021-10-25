import 'package:deapp/widget/settings/show_face.dart';
import 'package:flutter/material.dart';
import 'package:deapp/widget/dice_number.dart';
import 'package:deapp/widget/dice_side.dart';

class Two extends StatelessWidget {
  const Two(
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
    if (sides <= 6 && showFace == true) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SidesImage(number: number[0], x: x),
          SizedBox(
            height: 50,
          ),
          SidesImage(number: number[1], x: x),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Sides(number: number[0], c: c[0], x: x),
          SizedBox(
            height: 30,
          ),
          Sides(number: number[1], c: c[1], x: x)
        ],
      );
    }
  }
}
