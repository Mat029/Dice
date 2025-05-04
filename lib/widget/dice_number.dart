import 'package:flutter/material.dart';

class Sides extends StatelessWidget {
  const Sides({Key? key, required this.number, required this.c, required this.x}) : super(key: key);
  final int number;
  final double c;
  final double x; //height of the the box

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(deviceSize.width / 40),
        width: x + c,
        height: x,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColorLight, width: (x / 14)),
          borderRadius: BorderRadius.circular(deviceSize.width / 20),
          shape: BoxShape.rectangle,
        ),
        child: FittedBox(
          child: Text(
            "$number",
            style: TextStyle(color: Theme.of(context).primaryColorLight, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
