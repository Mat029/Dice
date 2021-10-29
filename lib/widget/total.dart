import 'package:deapp/widget/dice_number.dart';
import 'package:deapp/widget/settings/counter.dart';
import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({
    Key? key,
    required this.num,
    required this.dices,
  }) : super(key: key);
  final List<int> num;
  final int dices;

  @override
  Widget build(BuildContext context) {
    double cTotal = 100.0;
    int t = 0;
    for (var i = 0; i < dices; i++) {
      t += num[i];
    }
    if (t == 1000) {
      cTotal = 200;
    }
    double xTotal = 0.28;
    if (dices > 1 && isSelected == true) {
      return Column(
        children: [
          Sides(number: t, c: cTotal, x: xTotal),
          SizedBox(
            height: 30,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
