import 'package:flutter/material.dart';
import 'package:deapp/home.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'settings/counter.dart';
import 'settings/darktheme.dart';
import 'settings/langague.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _getBool();
    _getTheme();
    _getLanguague();
    _getDice();
    _getSides();
  }

  _getBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isSelected = (prefs.getBool('boolValue') ?? true);
    });
  }

  _getLanguague() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      languague = (prefs.getInt('language') ?? 1);
    });
  }

  _getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      theme = (prefs
              .getStringList('theme')
              ?.map((e) => e == 'true' ? true : false)
              .toList() ??
          [false, true, false]);
      themeInt = prefs.getInt('themeInt') ?? 0;
    });
  }

  _getDice() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nbofdice = prefs.getInt("dice") ?? 1;
    });
  }

  _getSides() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nbofsides = prefs.getInt("side") ?? 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
