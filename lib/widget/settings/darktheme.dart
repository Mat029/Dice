import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:deapp/l10n/app_localizations.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({Key? key}) : super(key: key);

  @override
  _DarkThemeState createState() => _DarkThemeState();
}

List<bool> themeOption = [false, true, false];
int themeInt = 0;

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    _saveTheme() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        prefs.setStringList(
          "theme",
          themeOption.map((e) => e ? 'true' : 'false').toList(),
        );
        prefs.setInt('themInt', themeInt);
        if (themeOption[0] == true) {
          AdaptiveTheme.of(context).setLight();
        } else if (themeOption[1] == true) {
          AdaptiveTheme.of(context).setSystem();
        } else {
          AdaptiveTheme.of(context).setDark();
        }
      });
    }

    return ToggleButtons(
      isSelected: themeOption,
      borderRadius: BorderRadius.all(Radius.circular(20)),
      children: <Widget>[
        Icon(
          Icons.wb_sunny,
          semanticLabel: AppLocalizations.of(context)!.day,
        ),
        Icon(
          Icons.phone_android,
          semanticLabel: AppLocalizations.of(context)!.system,
        ),
        Icon(
          Icons.mode_night,
          semanticLabel: AppLocalizations.of(context)!.night,
        )
      ],
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < themeOption.length; i++) {
            themeOption[i] = i == index;
          }
          themeInt = index;
          _saveTheme();
        });
      },
    );
  }
}
