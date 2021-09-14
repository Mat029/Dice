import 'package:flutter/material.dart';
import 'package:deapp/dice_number.dart';
import 'package:deapp/dice_side.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math';

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
              height: 60,
            ),
            ImageDice(sides: widget.sides, dice: widget.dice, ranNum: rannum),
            SizedBox(
              height: 46,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                  primary: Colors.white,
                  backgroundColor: Colors.blue),
              onPressed: _launch,
              child: Text(
                AppLocalizations.of(context)!.reroll,
                textScaleFactor: 3,
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
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
  final List ranNum;

  @override
  _ImageDiceState createState() => _ImageDiceState();
}

class _ImageDiceState extends State<ImageDice> {
  @override
  Widget build(BuildContext context) {
    int r1 = widget.ranNum[0];
    int r2 = widget.ranNum[1];
    int r3 = widget.ranNum[2];
    int r4 = widget.ranNum[3];
    int r5 = widget.ranNum[4];
    int r6 = widget.ranNum[5];
    int r7 = widget.ranNum[6];
    int r8 = widget.ranNum[7];
    int r9 = widget.ranNum[8];
    int r10 = widget.ranNum[9];
    List<double> c = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    double x = 1;
    if (widget.dice == 2) {
      x = 0.7;
    } else if (widget.dice >= 7) {
      x = 0.28;
    } else if (widget.dice >= 3) {
      x = 0.45;
    }

    if (r1 == 100) {
      c[0] = 93;
    }
    if (r2 == 100) {
      c[1] = 93;
    }
    if (r3 == 100) {
      c[2] = 93;
    }
    if (r4 == 100) {
      c[3] = 93;
    }
    if (r5 == 100) {
      c[4] = 93;
    }
    if (r6 == 100) {
      c[5] = 93;
    }
    if (r7 == 100) {
      c[6] = 93;
    }
    if (r8 == 100) {
      c[7] = 93;
    }
    if (r9 == 100) {
      c[8] = 93;
    }
    if (r10 == 100) {
      c[9] = 93;
    }

    // ONE DICE
    if (widget.dice == 1) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SidesImage(number: r1, x: x),
            SizedBox(
              height: 50,
            ),
          ],
        );
      } else {
        return Sides(number: r1, c: c[0], x: x);
      }
      // TWO DICES
    } else if (widget.dice == 2) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SidesImage(number: r1, x: x),
            SizedBox(
              height: 50,
            ),
            SidesImage(number: r2, x: x),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Sides(number: r1, c: c[0], x: x),
            SizedBox(
              height: 30,
            ),
            Sides(number: r2, c: c[1], x: x)
          ],
        );
      }
      //THREE DICES
    } else if (widget.dice == 3) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SidesImage(number: r3, x: x),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 25,
                ),
                Sides(number: r2, c: c[1], x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Sides(number: r3, c: c[2], x: x),
          ],
        );
      }
    }
    // FOUR DICES
    else if (widget.dice == 4) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r3, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r4, x: x),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 25,
                ),
                Sides(number: r2, c: c[1], x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r3, c: c[2], x: x),
                SizedBox(
                  width: 25,
                ),
                Sides(number: r4, c: c[3], x: x),
              ],
            ),
          ],
        );
      }
    }
    //FIVE DICES
    else if (widget.dice == 5) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r3, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r4, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r5, x: x),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 20,
                ),
                Sides(number: r2, c: c[1], x: x),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r3, c: c[2], x: x),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r4, c: c[3], x: x),
                SizedBox(
                  width: 20,
                ),
                Sides(number: r5, c: c[4], x: x),
              ],
            ),
          ],
        );
      }
    }
    // SIX DICES
    else if (widget.dice == 6) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r3, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r4, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r5, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r6, x: x),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 20,
                ),
                Sides(number: r2, c: c[1], x: x),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r3, c: c[2], x: x),
                SizedBox(
                  width: 20,
                ),
                Sides(number: r4, c: c[3], x: x),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r5, c: c[4], x: x),
                SizedBox(
                  width: 20,
                ),
                Sides(number: r6, c: c[5], x: x),
              ],
            ),
          ],
        );
      }
    }
    // SEVEN DICES
    else if (widget.dice == 7) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r3, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r4, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r5, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r6, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r7, x: x),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r2, c: c[1], x: x),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r3, c: c[2], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r4, c: c[3], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r5, c: c[4], x: x),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r6, c: c[5], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r7, c: c[6], x: x),
              ],
            ),
          ],
        );
      }
    }
    // HEIGHT DICES
    else if (widget.dice == 8) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r3, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r4, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r5, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r6, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r7, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r8, x: x),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r2, c: c[1], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r3, c: c[2], x: x),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r4, c: c[3], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r5, c: c[4], x: x),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r6, c: c[5], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r7, c: c[6], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r8, c: c[7], x: x),
              ],
            ),
          ],
        );
      }
    }
    // NINE DICES
    else if (widget.dice == 9) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r3, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r4, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r5, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r6, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r7, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r8, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r9, x: x),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r2, c: c[1], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r3, c: c[2], x: x),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r4, c: c[3], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r5, c: c[4], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r6, c: c[5], x: x),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r7, c: c[6], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r8, c: c[7], x: x),
                SizedBox(
                  width: 17,
                ),
                Sides(number: r9, c: c[8], x: x),
              ],
            ),
          ],
        );
      }
    }
    // TEN DICES
    else {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r1, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r2, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r3, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r4, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r5, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r6, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r7, x: x),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SidesImage(number: r8, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r9, x: x),
                SizedBox(
                  width: 25,
                ),
                SidesImage(number: r10, x: x),
              ],
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r1, c: c[0], x: x),
                SizedBox(
                  width: 14,
                ),
                Sides(number: r2, c: c[1], x: x),
                SizedBox(
                  width: 14,
                ),
                Sides(number: r3, c: c[2], x: x),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r4, c: c[3], x: x),
                SizedBox(
                  width: 14,
                ),
                Sides(number: r5, c: c[4], x: x),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r6, c: c[5], x: x),
                SizedBox(
                  width: 14,
                ),
                Sides(number: r7, c: c[6], x: x),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sides(number: r8, c: c[7], x: x),
                SizedBox(
                  width: 14,
                ),
                Sides(number: r9, c: c[8], x: x),
                SizedBox(
                  width: 14,
                ),
                Sides(number: r10, c: c[9], x: x),
              ],
            ),
          ],
        );
      }
    }
  }
}
