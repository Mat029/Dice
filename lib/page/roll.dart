import 'package:deapp/page/home.dart';
import 'package:deapp/widget/total.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math';
import 'package:deapp/model/models.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.dice, required this.sides})
      : super(key: key);
  final int dice;
  final int sides;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> rannum = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];

  Random random = new Random();

  void initState() {
    super.initState();
    _launch();
  }

  void _launch() {
    setState(() {
      rannum[0] = 1 + random.nextInt(widget.sides);
      rannum[1] = 1 + random.nextInt(widget.sides);
      rannum[2] = 1 + random.nextInt(widget.sides);
      rannum[3] = 1 + random.nextInt(widget.sides);
      rannum[4] = 1 + random.nextInt(widget.sides);
      rannum[5] = 1 + random.nextInt(widget.sides);
      rannum[6] = 1 + random.nextInt(widget.sides);
      rannum[7] = 1 + random.nextInt(widget.sides);
      rannum[8] = 1 + random.nextInt(widget.sides);
      rannum[9] = 1 + random.nextInt(widget.sides);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.dice,
          textAlign: TextAlign.center,
          textScaleFactor: 2,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ImageDice(sides: widget.sides, dice: widget.dice, ranNum: rannum),
          ElevatedButton(
            onPressed: _launch,
            child: Text(
              AppLocalizations.of(context)!.reroll,
              textScaleFactor: 3,
            ),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              padding: EdgeInsets.fromLTRB(36, 12, 36, 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Total(
            num: rannum,
            dices: nbofdice,
          )
        ],
      ),
    );
  }
}

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
    if (widget.dice == 1) {
      return One(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 2) {
      return Two(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 3) {
      return Three(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 4) {
      return Four(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 5) {
      return Five(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 6) {
      return Six(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 7) {
      return Seven(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 8) {
      return Height(sides: widget.sides, number: widget.ranNum);
    } else if (widget.dice == 9) {
      return Nine(sides: widget.sides, number: widget.ranNum);
    } else {
      return Ten(sides: widget.sides, number: widget.ranNum);
    }
  }
}
