import 'package:deapp/widget/settings/show_face.dart';
import 'package:flutter/material.dart';
import 'package:deapp/widget/dice_number.dart';
import 'package:deapp/widget/dice_side.dart';

class Two extends StatelessWidget {
  const Two({Key? key, required this.sides, required this.number})
      : super(key: key);
  final int sides;
  final List<int> number;

  @override
  Widget build(BuildContext context) {
    double add = (MediaQuery.of(context).size.width) / 8;
    double taille = (MediaQuery.of(context).size.height) / 5;
    List<double> c = [0, 0];

    if (sides == 100) {
      if (number[0] == 100) {
        c[0] = add;
      }
      if (number[1] == 100) {
        c[1] = add;
      }
    }

    if (sides <= 6 && showFace == true) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SidesImage(number: number[0], x: taille),
          SizedBox(
            height: 50,
          ),
          SidesImage(number: number[1], x: taille),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Sides(number: number[0], c: c[0], x: taille),
          SizedBox(
            height: 30,
          ),
          Sides(number: number[1], c: c[1], x: taille)
        ],
      );
    }
  }
}
