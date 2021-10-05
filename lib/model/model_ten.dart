import 'package:flutter/material.dart';
import 'package:deapp/widget/dice_number.dart';
import 'package:deapp/widget/dice_side.dart';

class Ten extends StatelessWidget {
  const Ten(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SidesImage(number: number[0], x: x),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[1], x: x),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[2], x: x),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SidesImage(number: number[3], x: x),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[4], x: x),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SidesImage(number: number[5], x: x),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[6], x: x),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SidesImage(number: number[7], x: x),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[8], x: x),
              SizedBox(
                width: 25,
              ),
              SidesImage(number: number[9], x: x),
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
              Sides(number: number[0], c: c[0], x: x),
              SizedBox(
                width: 14,
              ),
              Sides(number: number[1], c: c[1], x: x),
              SizedBox(
                width: 14,
              ),
              Sides(number: number[2], c: c[2], x: x),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Sides(number: number[3], c: c[3], x: x),
              SizedBox(
                width: 14,
              ),
              Sides(number: number[4], c: c[4], x: x),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Sides(number: number[5], c: c[5], x: x),
              SizedBox(
                width: 14,
              ),
              Sides(number: number[6], c: c[6], x: x),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Sides(number: number[7], c: c[7], x: x),
              SizedBox(
                width: 14,
              ),
              Sides(number: number[8], c: c[8], x: x),
              SizedBox(
                width: 14,
              ),
              Sides(number: number[9], c: c[9], x: x),
            ],
          ),
        ],
      );
    }
  }
}
