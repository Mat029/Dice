import 'package:flutter/material.dart';
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
                  padding: EdgeInsets.fromLTRB(46, 13, 46, 13),
                  primary: Colors.white,
                  backgroundColor: Colors.blue),
              onPressed: _launch,
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
      {Key? key, required this.sides, required this.dice, required this.ranNum})
      : super(key: key);
  final int sides;
  final int dice;
  final List ranNum;

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
    } else if (widget.dice == 10) {
      x = 0.3;
    } else if (widget.dice >= 7) {
      x = 0.35;
    } else if (widget.dice >= 3) {
      x = 0.45;
    }

    if (r1 == 100) {
      c[0] = 100;
    } else if (r2 == 100) {
      c[1] = 100;
    } else if (r3 == 100) {
      c[2] = 100;
    } else if (r4 == 100) {
      c[3] = 100;
    } else if (r5 == 100) {
      c[4] = 100;
    } else if (r6 == 100) {
      c[5] = 100;
    } else if (r7 == 100) {
      c[6] = 100;
    } else if (r8 == 100) {
      c[7] = 100;
    } else if (r9 == 100) {
      c[8] = 100;
    } else if (r10 == 100) {
      c[9] = 100;
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
                  width: ((220 + c[0]) * x) + 30,
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
                  width: ((220 + c[0]) * x) + 30,
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
                  width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                  width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[3]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[3]) * x) + 30,
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
                      width: ((220 + c[4]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[3]) * x) + 30,
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
                      width: ((220 + c[4]) * x) + 30,
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
                      width: ((220 + c[5]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[3]) * x) + 30,
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
                      width: ((220 + c[4]) * x) + 30,
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
                      width: ((220 + c[5]) * x) + 30,
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
                      width: ((220 + c[6]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[3]) * x) + 30,
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
                      width: ((220 + c[4]) * x) + 30,
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
                      width: ((220 + c[5]) * x) + 30,
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
                      width: ((220 + c[6]) * x) + 30,
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
                      width: ((220 + c[7]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[3]) * x) + 30,
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
                      width: ((220 + c[4]) * x) + 30,
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
                      width: ((220 + c[5]) * x) + 30,
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
                      width: ((220 + c[6]) * x) + 30,
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
                      width: ((220 + c[7]) * x) + 30,
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
                      width: ((220 + c[8]) * x) + 30,
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
                      width: ((220 + c[0]) * x) + 30,
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
                      width: ((220 + c[1]) * x) + 30,
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
                      width: ((220 + c[2]) * x) + 30,
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
                      width: ((220 + c[3]) * x) + 30,
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
                      width: ((220 + c[4]) * x) + 30,
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
                      width: ((220 + c[5]) * x) + 30,
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
                      width: ((220 + c[6]) * x) + 30,
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
                      width: ((220 + c[7]) * x) + 30,
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
                      width: ((220 + c[8]) * x) + 30,
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
                      width: ((220 + c[9]) * x) + 30,
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
