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
      body: InitPage(),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: (MediaQuery.of(context).size.height) / 14,
            ),
            Text(
              AppLocalizations.of(context)!.nbdices,
              textScaleFactor: 2.75,
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
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
            Text(
              AppLocalizations.of(context)!.nbsides,
              style: TextStyle(fontWeight: FontWeight.w900),
              textScaleFactor: 2.75,
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyHomePage(dice: nbofdice, sides: nbofsides);
                    },
                  ),
                );
              },
              child: Text(
                AppLocalizations.of(context)!.roll,
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
            ElevatedButton(
              onPressed: () => showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) => settings(context),
              ),
              child: Column(
                children: [
                  Icon(Icons.keyboard_arrow_up, size: 60),
                  Text(
                    AppLocalizations.of(context)!.more,
                    textScaleFactor: 1.5,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.transparent,
                shadowColor: Colors.black12,
                onPrimary: Theme.of(context).hintColor,
              ),
            ),
            // Verify on the next play store update if it's needed
            // SizedBox(
            //   height: MediaQuery.of(context).viewInsets.bottom,
            // ),
          ],
        ),
      );
}
