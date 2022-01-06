import 'package:deapp/widget/settings/show_face.dart';
import 'package:flutter/material.dart';
import 'package:deapp/widget/dice_number.dart';
import 'package:deapp/widget/dice_side.dart';

class One extends StatelessWidget {
  const One({Key? key, required this.sides, required this.number})
      : super(key: key);
  final int sides;
  final List<int> number;

  @override
  Widget build(BuildContext context) {
    double c = 0;
    double add = (MediaQuery.of(context).size.width) / 6;
    if (number[0] == 100) {
      c = add;
    }
    double taille = (MediaQuery.of(context).size.height) / 3;
    if (sides <= 6 && showFace == true) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SidesImage(number: number[0], x: taille),
        ],
      );
    } else {
      return Sides(number: number[0], c: c, x: taille);
    }
  }
}
