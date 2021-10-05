import 'package:deapp/widget/dice_number.dart';
import 'package:flutter/material.dart';

class TotalCounter extends StatelessWidget {
  const TotalCounter({Key? key, required this.num, required this.dice})
      : super(key: key);
  final List<int> num;
  final int dice;

  @override
  Widget build(BuildContext context) {
    double c = 100.0;
    int t = 0;
    if (num[0] +
            num[1] +
            num[2] +
            num[3] +
            num[4] +
            num[5] +
            num[6] +
            num[7] +
            num[8] +
            num[9] ==
        1000) {
      c = 200;
    }
    for (var i = 0; i < dice; i++) {
      t += num[i];
    }
    double x = 0.25;
    return Sides(number: t, c: c, x: x);
  }
}
