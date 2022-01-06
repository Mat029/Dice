import 'package:deapp/widget/settings/show_face.dart';
import 'package:flutter/material.dart';
import 'package:deapp/widget/dice_number.dart';
import 'package:deapp/widget/dice_side.dart';

class Five extends StatelessWidget {
  const Five({Key? key, required this.sides, required this.number})
      : super(key: key);
  final int sides;
  final List<int> number;

  @override
  Widget build(BuildContext context) {
    double taille = (MediaQuery.of(context).size.height) / 6.5;
    double add = (MediaQuery.of(context).size.width) / 12;
    List<double> c = [0, 0, 0, 0, 0];

    if (sides == 100) {
      if (number[0] == 100) {
        c[0] = add;
      }
      if (number[1] == 100) {
        c[1] = add;
      }
      if (number[2] == 100) {
        c[2] = add;
      }
      if (number[3] == 100) {
        c[3] = add;
      }
      if (number[4] == 100) {
        c[4] = add;
      }
    }
    if (sides <= 6 && showFace == true) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SidesImage(number: number[0], x: taille),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[1], x: taille),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SidesImage(number: number[2], x: taille),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SidesImage(number: number[3], x: taille),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[4], x: taille),
            ],
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Sides(number: number[0], c: c[0], x: taille),
              SizedBox(
                width: 20,
              ),
              Sides(number: number[1], c: c[1], x: taille),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Sides(number: number[2], c: c[2], x: taille),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Sides(number: number[3], c: c[3], x: taille),
              SizedBox(
                width: 20,
              ),
              Sides(number: number[4], c: c[4], x: taille),
            ],
          ),
        ],
      );
    }
  }
}
