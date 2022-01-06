import 'package:flutter/material.dart';

class Sides extends StatelessWidget {
  const Sides(
      {Key? key, required this.number, required this.c, required this.x})
      : super(key: key);
  final int number;
  final double c;
  final double x; //height of the the box

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: x + c,
        height: x,
        decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).primaryColorLight, width: (x / 12)),
          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
        ),
        child: FittedBox(
          child: Text(
            "$number",
            style: TextStyle(
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ));
  }
}
