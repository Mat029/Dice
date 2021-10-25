import 'package:deapp/widget/settings/counter.dart';
import 'package:flutter/material.dart';
import 'package:deapp/widget/total_counter.dart';

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
    if (dices > 1 && isSelected == true) {
      return Column(
        children: [
          TotalCounter(
            num: num,
            dice: dices,
          ),
          SizedBox(
            height: 25,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
