//This is the fist viable version of my dice app, The alpha 1.0
//A lot of things need to be optimise and some bugs must be fixed
//The layout is actually fix and design for one size of phone so one of the objectives for the beta or final versions is to bring a responsive layout
//I will try to publish the beta version at the end of July
//Roadmap soon available in readme
//And sorry for my english level, I'm not english

import 'package:flutter/material.dart';
import 'package:deapp/roll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      home: Base(),
    );
  }
}

class Base extends StatelessWidget {
  const Base({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [InitPage()],
        ),
      ),
    );
  }
}

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int nbofdice = 1;
  int nbofsides = 6;
  int x = 4;
  @override
  Widget build(BuildContext context) => SliderTheme(
        data: SliderThemeData(
          valueIndicatorColor: Colors.blue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 140,
            ),
            Text(
              "Nombre de dé :",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Slider(
                value: nbofdice.ceilToDouble(),
                min: 1,
                max: 10,
                divisions: 9,
                label: nbofdice.toString(),
                onChanged: (value) => setState(() {
                      this.nbofdice = value.toInt();
                    })),
            SizedBox(
              height: 80,
            ),
            Text(
              "Nombre de faces :",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Slider(
                value: nbofsides.toDouble(),
                min: 2,
                max: 100,
                divisions: 99,
                label: nbofsides.toString(),
                onChanged: (value) => setState(() {
                      this.nbofsides = value.toInt();
                    })),
            SizedBox(
              height: 110,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 16, 40, 16),
                  backgroundColor: Colors.blue,
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHomePage(
                            title: "DE",
                            nbofdice: nbofdice,
                            nbofsides: nbofsides);
                      },
                    ),
                  );
                },
                child: Text(
                  "Lancer",
                  style: TextStyle(fontSize: x * 10),
                )),
          ],
        ),
      );
}
