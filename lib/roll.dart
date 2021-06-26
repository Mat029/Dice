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
  int randomNumber = 1;
  Random random = new Random();

  void initState() {
    super.initState();
    randomNumber = 1 + random.nextInt(widget.nboffaces);
  }

  void _incrementCounter() {
    setState(() {
      randomNumber = 1 + random.nextInt(widget.nboffaces);
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
              random: randomNumber,
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
      {Key? key, required this.face, required this.random, required this.dice})
      : super(key: key);
  final int face;
  final int random;
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
    int a = widget.random;
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
            "image/" + imageArray[widget.random - 1],
            height: (175 * x) + 25,
            width: (175 * x) + 25,
          ),
        ],
      );
    } else {
      if (a == 100) {
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
                    "$a",
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
