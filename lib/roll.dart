import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {Key? key,
      required this.title,
      required this.nbofdice,
      required this.nboffaces})
      : super(key: key);
  final String title;
  final int nbofdice;
  final int nboffaces;
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
    randomNumber1 = 1 + random.nextInt(widget.nboffaces);
    randomNumber2 = 1 + random.nextInt(widget.nboffaces);
    randomNumber3 = 1 + random.nextInt(widget.nboffaces);
    randomNumber4 = 1 + random.nextInt(widget.nboffaces);
    randomNumber5 = 1 + random.nextInt(widget.nboffaces);
    randomNumber6 = 1 + random.nextInt(widget.nboffaces);
    randomNumber7 = 1 + random.nextInt(widget.nboffaces);
    randomNumber8 = 1 + random.nextInt(widget.nboffaces);
    randomNumber9 = 1 + random.nextInt(widget.nboffaces);
    randomNumber10 = 1 + random.nextInt(widget.nboffaces);
  }

  void _incrementCounter() {
    setState(() {
      randomNumber1 = 1 + random.nextInt(widget.nboffaces);
      randomNumber2 = 1 + random.nextInt(widget.nboffaces);
      randomNumber3 = 1 + random.nextInt(widget.nboffaces);
      randomNumber4 = 1 + random.nextInt(widget.nboffaces);
      randomNumber5 = 1 + random.nextInt(widget.nboffaces);
      randomNumber6 = 1 + random.nextInt(widget.nboffaces);
      randomNumber7 = 1 + random.nextInt(widget.nboffaces);
      randomNumber8 = 1 + random.nextInt(widget.nboffaces);
      randomNumber9 = 1 + random.nextInt(widget.nboffaces);
      randomNumber10 = 1 + random.nextInt(widget.nboffaces);
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
              height: 80,
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
              face: widget.nboffaces,
              dice: widget.nbofdice,
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  primary: Colors.white,
                  backgroundColor: Colors.blue),
              onPressed: _incrementCounter,
              child: Text(
                'Relancer',
                textScaleFactor: 3,
              ),
            ),
            SizedBox(
              height: 130,
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
      required this.face,
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
  final int face;
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
    double c = 0;
    double x = 1;
    if (widget.dice == 2) {
      x = 0.8;
    } else if (widget.dice >= 7) {
      x = 0.4;
    } else if (widget.dice >= 3) {
      x = 0.6;
    }
    if (widget.face <= 6) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "image/" + imageArray[r1 - 1],
            height: (175 * x) + 25,
            width: (175 * x) + 25,
          ),
        ],
      );
    } else {
      if (r1 == 100) {
        c = 100;
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: <Widget>[
              Container(
                width: ((220 + c) * x) + 30,
                height: (220 * x) + 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: (10 * x) + 3),
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
  }
}
