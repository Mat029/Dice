import 'package:flutter/material.dart';

class Sides extends StatelessWidget {
  const Sides(
      {Key? key, required this.number, required this.c, required this.x})
      : super(key: key);
  final int number;
  final double c;
  final double x;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: ((220 + c) * x) + 30,
          height: (220 * x) + 30,
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).primaryColorLight,
                width: (10 * x) + 3),
            borderRadius: BorderRadius.circular(50 * x),
            shape: BoxShape.rectangle,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "$number",
              textScaleFactor: (10.8 * x) + 1.2,
              style: TextStyle(
                color: Theme.of(context).primaryColorLight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
