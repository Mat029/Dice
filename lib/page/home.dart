import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deapp/page/roll.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

int nbofdice = 1;
int nbofsides = 6;
_saveDice() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt("dice", nbofdice);
}

_saveSide() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt("side", nbofsides);
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) => SliderTheme(
        data: SliderThemeData(
          valueIndicatorColor: Theme.of(context).primaryColor,
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
                activeColor: Theme.of(context).primaryColor,
                value: nbofdice.ceilToDouble(),
                min: 1,
                max: 10,
                divisions: 9,
                label: nbofdice.toString(),
                onChanged: (value) => setState(() {
                      nbofdice = value.toInt();
                      _saveDice();
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
                activeColor: Theme.of(context).primaryColor,
                value: nbofsides.toDouble(),
                min: 2,
                max: 100,
                divisions: 99,
                label: nbofsides.toString(),
                onChanged: (value) => setState(() {
                      nbofsides = value.toInt();
                      _saveSide();
                    })),
            SizedBox(
              height: 90,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
                  backgroundColor: Theme.of(context).primaryColor,
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
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  primary: Theme.of(context).hintColor,
                  backgroundColor: Theme.of(context).primaryColorDark,
                  shadowColor: Colors.transparent),
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => sheets(),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.keyboard_arrow_up,
                    size: 60,
                  ),
                  Text(
                    AppLocalizations.of(context)!.more,
                    textScaleFactor: 1.5,
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
