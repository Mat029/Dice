import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {Key? key,
      required this.title,
      required this.nbofdice,
      required this.nbofsides})
      : super(key: key);
  final String title;
  final int nbofdice;
  final int nbofsides;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int randomNumber1 = 1;
  int randomNumber2 = 1;
  int randomNumber3 = 1;
  int randomNumber4 = 1;
  int randomNumber5 = 1;
  int randomNumber6 = 1;
  int randomNumber7 = 1;
  int randomNumber8 = 1;
  int randomNumber9 = 1;
  int randomNumber10 = 1;

  Random random = new Random();

  void initState() {
    super.initState();
    randomNumber1 = 1 + random.nextInt(widget.nbofsides);
    randomNumber2 = 1 + random.nextInt(widget.nbofsides);
    randomNumber3 = 1 + random.nextInt(widget.nbofsides);
    randomNumber4 = 1 + random.nextInt(widget.nbofsides);
    randomNumber5 = 1 + random.nextInt(widget.nbofsides);
    randomNumber6 = 1 + random.nextInt(widget.nbofsides);
    randomNumber7 = 1 + random.nextInt(widget.nbofsides);
    randomNumber8 = 1 + random.nextInt(widget.nbofsides);
    randomNumber9 = 1 + random.nextInt(widget.nbofsides);
    randomNumber10 = 1 + random.nextInt(widget.nbofsides);
  }

  void _incrementCounter() {
    setState(() {
      randomNumber1 = 1 + random.nextInt(widget.nbofsides);
      randomNumber2 = 1 + random.nextInt(widget.nbofsides);
      randomNumber3 = 1 + random.nextInt(widget.nbofsides);
      randomNumber4 = 1 + random.nextInt(widget.nbofsides);
      randomNumber5 = 1 + random.nextInt(widget.nbofsides);
      randomNumber6 = 1 + random.nextInt(widget.nbofsides);
      randomNumber7 = 1 + random.nextInt(widget.nbofsides);
      randomNumber8 = 1 + random.nextInt(widget.nbofsides);
      randomNumber9 = 1 + random.nextInt(widget.nbofsides);
      randomNumber10 = 1 + random.nextInt(widget.nbofsides);
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
            ImageDice(
              random1: randomNumber1,
              random2: randomNumber2,
              random3: randomNumber3,
              random4: randomNumber4,
              random5: randomNumber5,
              random6: randomNumber6,
              random7: randomNumber7,
              random8: randomNumber8,
              random9: randomNumber9,
              random10: randomNumber10,
              sides: widget.nbofsides,
              dice: widget.nbofdice,
            ),
            SizedBox(
              height: 46,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(46, 13, 46, 13),
                  primary: Colors.white,
                  backgroundColor: Colors.blue),
              onPressed: _incrementCounter,
              child: Text(
                'Relancer',
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
      {Key? key,
      required this.sides,
      required this.random1,
      required this.random2,
      required this.random3,
      required this.random4,
      required this.random5,
      required this.random6,
      required this.random7,
      required this.random8,
      required this.random9,
      required this.random10,
      required this.dice})
      : super(key: key);
  final int sides;
  final int random1;
  final int random2;
  final int random3;
  final int random4;
  final int random5;
  final int random6;
  final int random7;
  final int random8;
  final int random9;
  final int random10;
  final int dice;

  @override
  _ImageDiceState createState() => _ImageDiceState();
}

class _ImageDiceState extends State<ImageDice> {
  var imageArray = [
    'one.png',
    'two.png',
    'three.png',
    'four.png',
    'five.png',
    'six.png'
  ];
  @override
  Widget build(BuildContext context) {
    int r1 = widget.random1;
    int r2 = widget.random2;
    int r3 = widget.random3;
    int r4 = widget.random4;
    int r5 = widget.random5;
    int r6 = widget.random6;
    int r7 = widget.random7;
    int r8 = widget.random8;
    int r9 = widget.random9;
    int r10 = widget.random10;
    double c1 = 0;
    double c2 = 0;
    double c3 = 0;
    double c4 = 0;
    double c5 = 0;
    double c6 = 0;
    double c7 = 0;
    double c8 = 0;
    double c9 = 0;
    double c10 = 0;
    double x = 1;
    if (widget.dice == 2) {
      x = 0.7;
    } else if (widget.dice == 10) {
      x = 0.3;
    } else if (widget.dice >= 7) {
      x = 0.35;
    } else if (widget.dice >= 3) {
      x = 0.45;
    }

    if (r1 == 100) {
      c1 = 100;
    } else if (r2 == 100) {
      c2 = 100;
    } else if (r3 == 100) {
      c3 = 100;
    } else if (r4 == 100) {
      c4 = 100;
    } else if (r5 == 100) {
      c5 = 100;
    } else if (r6 == 100) {
      c6 = 100;
    } else if (r7 == 100) {
      c7 = 100;
    } else if (r8 == 100) {
      c8 = 100;
    } else if (r9 == 100) {
      c9 = 100;
    } else if (r10 == 100) {
      c10 = 100;
    }

    // ONE DICE
    if (widget.dice == 1) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "image/" + imageArray[r1 - 1],
              height: (175 * x) + 25,
              width: (175 * x) + 25,
            ),
            SizedBox(
              height: 50,
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  width: ((220 + c1) * x) + 30,
                  height: (220 * x) + 30,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, width: (10 * x) + 3),
                    borderRadius: BorderRadius.circular(50 * x),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$r1",
                      textScaleFactor: (10.8 * x) + 1.2,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }
      // TWO DICES
    } else if (widget.dice == 2) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "image/" + imageArray[r1 - 1],
              height: (175 * x) + 25,
              width: (175 * x) + 25,
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "image/" + imageArray[r2 - 1],
              height: (175 * x) + 25,
              width: (175 * x) + 25,
            ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  width: ((220 + c1) * x) + 30,
                  height: (220 * x) + 30,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, width: (10 * x) + 3),
                    borderRadius: BorderRadius.circular(50 * x),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$r1",
                      textScaleFactor: (10.8 * x) + 1.2,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: ((220 + c2) * x) + 30,
                  height: (220 * x) + 30,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, width: (10 * x) + 3),
                    borderRadius: BorderRadius.circular(50 * x),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$r2",
                      textScaleFactor: (10.8 * x) + 1.2,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }
      //THREE DIC3ES
    } else if (widget.dice == 3) {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Image.asset(
              "image/" + imageArray[r3 - 1],
              height: (175 * x) + 25,
              width: (175 * x) + 25,
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: ((220 + c3) * x) + 30,
                  height: (220 * x) + 30,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black, width: (10 * x) + 3),
                    borderRadius: BorderRadius.circular(50 * x),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$r3",
                      textScaleFactor: (10.8 * x) + 1.2,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r3 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r4 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c3) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r3",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c4) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r4",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r3 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r4 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r5 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c3) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r3",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c4) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r4",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c5) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r5",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r3 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r4 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r5 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r6 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c3) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r3",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c4) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r4",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c5) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r5",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c6) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r6",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r3 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r4 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r5 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r6 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r7 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c3) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r3",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c4) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r4",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c5) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r5",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c6) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r6",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c7) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r7",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r3 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r4 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r5 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r6 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r7 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r8 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c3) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r3",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c4) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r4",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c5) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r5",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c6) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r6",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c7) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r7",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c8) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r8",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r3 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r4 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r5 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r6 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r7 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r8 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r9 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c3) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r3",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c4) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r4",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c5) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r5",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c6) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r6",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c7) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r7",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c8) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r8",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c9) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r9",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      }
    }
    // TEN DICES SOON
    else {
      if (widget.sides <= 6) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r1 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r2 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r3 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r4 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r5 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r6 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r7 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "image/" + imageArray[r8 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r9 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Image.asset(
                  "image/" + imageArray[r10 - 1],
                  height: (175 * x) + 25,
                  width: (175 * x) + 25,
                ),
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c1) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r1",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c2) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r2",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c3) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r3",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c4) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r4",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c5) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r5",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c6) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r6",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c7) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r7",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c8) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r8",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c9) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r9",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: ((220 + c10) * x) + 30,
                      height: (220 * x) + 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black, width: (10 * x) + 3),
                        borderRadius: BorderRadius.circular(50 * x),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "$r10",
                          textScaleFactor: (10.8 * x) + 1.2,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      }
    }
  }
}
