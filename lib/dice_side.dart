import 'package:flutter/material.dart';

class Sides_image extends StatelessWidget {
  const Sides_image({Key? key, required this.number, required this.x})
      : super(key: key);
  final int number;

  final double x;

  @override
  Widget build(BuildContext context) {
    var imageArray = [
      'one.png',
      'two.png',
      'three.png',
      'four.png',
      'five.png',
      'six.png'
    ];
    return Image.asset(
      "image/" + imageArray[number - 1],
      height: (175 * x) + 25,
      width: (175 * x) + 25,
    );
  }
}
