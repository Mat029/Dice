import 'package:flutter/material.dart';
import 'package:deapp/roll.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('es', ''),
        Locale("fr", ""),
        Locale("de", "")
      ],
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
              AppLocalizations.of(context)!.nbdices,
              textScaleFactor: 2.75,
              style: TextStyle(
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
              AppLocalizations.of(context)!.nbsides,
              style: TextStyle(fontWeight: FontWeight.w900),
              textScaleFactor: 2.75,
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
                  padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                  backgroundColor: Colors.blue,
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHomePage(
                            title: AppLocalizations.of(context)!.dice,
                            dice: nbofdice,
                            sides: nbofsides);
                      },
                    ),
                  );
                },
                child: Text(
                  AppLocalizations.of(context)!.roll,
                  textScaleFactor: 3,
                )),
          ],
        ),
      );
}
