import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({Key? key}) : super(key: key);

  @override
  _DarkThemeState createState() => _DarkThemeState();
}

List<bool> theme = [false, true, false];
int themeInt = 0;

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    _saveTheme() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        prefs.setStringList(
          "theme",
          theme.map((e) => e ? 'true' : 'false').toList(),
        );
        prefs.setInt('themInt', themeInt);
      });
    }

    return ToggleButtons(
      isSelected: theme,
      children: <Widget>[Text("Day"), Text("System"), Text("Night")],
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < theme.length; i++) {
            theme[i] = i == index;
          }
          themeInt = index;
          _saveTheme();
        });
      },
    );
  }
}
