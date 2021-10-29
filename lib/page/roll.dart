import 'package:deapp/page/home.dart';
import 'package:deapp/widget/total.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math';
import '../widget/image_Dice.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {Key? key, required this.title, required this.dice, required this.sides})
      : super(key: key);
  final String title;
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
          widget.title,
          textAlign: TextAlign.center,
          textScaleFactor: 2,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            ImageDice(sides: widget.sides, dice: widget.dice, ranNum: rannum),
            SizedBox(
              height: 30,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
                  primary: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor),
              onPressed: _launch,
              child: Text(
                AppLocalizations.of(context)!.reroll,
                textScaleFactor: 3,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Total(
              num: rannum,
              dices: nbofdice,
            )
          ],
        ),
      ),
    );
  }
}
