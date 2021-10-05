import 'package:flutter/material.dart';
import 'package:deapp/model/model_five.dart';
import 'package:deapp/model/model_four.dart';
import 'package:deapp/model/model_height.dart';
import 'package:deapp/model/model_nine.dart';
import 'package:deapp/model/model_seven.dart';
import 'package:deapp/model/model_six.dart';
import 'package:deapp/model/model_ten.dart';
import 'package:deapp/model/model_three.dart';
import 'package:deapp/model/model_two.dart';
import '../model/model_one.dart';

class ImageDice extends StatefulWidget {
  ImageDice(
      {Key? key, required this.sides, required this.dice, required this.ranNum})
      : super(key: key);
  final int sides;
  final int dice;
  final List<int> ranNum;

  @override
  _ImageDiceState createState() => _ImageDiceState();
}

class _ImageDiceState extends State<ImageDice> {
  @override
  Widget build(BuildContext context) {
    List<double> c = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    double x = 1;
    if (widget.dice == 2) {
      x = 0.7;
    } else if (widget.dice >= 7) {
      x = 0.28;
    } else if (widget.dice >= 3) {
      x = 0.45;
    }

    if (widget.ranNum[0] == 100) {
      c[0] = 93;
    }
    if (widget.ranNum[1] == 100) {
      c[1] = 93;
    }
    if (widget.ranNum[2] == 100) {
      c[2] = 93;
    }
    if (widget.ranNum[3] == 100) {
      c[3] = 93;
    }
    if (widget.ranNum[4] == 100) {
      c[4] = 93;
    }
    if (widget.ranNum[5] == 100) {
      c[5] = 93;
    }
    if (widget.ranNum[6] == 100) {
      c[6] = 93;
    }
    if (widget.ranNum[7] == 100) {
      c[7] = 93;
    }
    if (widget.ranNum[8] == 100) {
      c[8] = 93;
    }
    if (widget.ranNum[9] == 100) {
      c[9] = 93;
    }

    // ONE DICE
    if (widget.dice == 1) {
      return One(
        c: c,
        sides: widget.sides,
        x: x,
        number: widget.ranNum,
      );
      // TWO DICES
    } else if (widget.dice == 2) {
      return Two(sides: widget.sides, c: c, x: x, number: widget.ranNum);
      //THREE DICES
    } else if (widget.dice == 3) {
      return Three(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
    // FOUR DICES
    else if (widget.dice == 4) {
      return Four(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
    //FIVE DICES
    else if (widget.dice == 5) {
      return Five(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
    // SIX DICES
    else if (widget.dice == 6) {
      return Six(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
    // SEVEN DICES
    else if (widget.dice == 7) {
      return Seven(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
    // HEIGHT DICES
    else if (widget.dice == 8) {
      return Height(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
    // NINE DICES
    else if (widget.dice == 9) {
      return Nine(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
    // TEN DICES
    else {
      return Ten(sides: widget.sides, c: c, x: x, number: widget.ranNum);
    }
  }
}
