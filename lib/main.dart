import 'package:flutter/material.dart';
import 'package:deapp/widget/settings/settings_export.dart';
import 'package:deapp/page/home.dart';
import 'package:deapp/page/settings/settings2.dart';
import "package:deapp/l10n/app_localizations.dart";
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false;
  dynamic savedThemeMode;

  @override
  void initState() {
    super.initState();
    _getBool();
    _getTheme();
    _getFace();
    _getDice();
    _getSides();
    _getVersion();
  }

  _getBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isSelected = (prefs.getBool('boolValue') ?? true);
    });
  }

  _getFace() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      showFace = (prefs.getBool('Face') ?? true);
    });
  }

  _getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      themeOption =
          (prefs.getStringList('theme')?.map((e) => e == 'true' ? true : false).toList() ?? [false, true, false]);
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

  _getVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = '${packageInfo.version}';
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitUp]);
    return AdaptiveTheme(
        light: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.blue[400],
            iconTheme: IconThemeData(color: Colors.blue[400]),
            toggleButtonsTheme:
                ToggleButtonsThemeData(selectedColor: Colors.blue[400], fillColor: Colors.blue[400]?.withAlpha(70)),
            hintColor: Colors.black,
            primaryColorLight: Colors.black),
        dark: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.blue[700],
            iconTheme: IconThemeData(color: Colors.blue[700]),
            toggleButtonsTheme:
                ToggleButtonsThemeData(selectedColor: Colors.blue[700], fillColor: Colors.blue[700]?.withAlpha(70)),
            hintColor: Colors.white,
            primaryColorLight: Colors.white70),
        initial: AdaptiveThemeMode.system,
        builder: (theme, darktheme) => MaterialApp(
              theme: theme,
              darkTheme: darktheme,
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
                Locale("de", ""),
              ],
              home: Base(),
            ));
  }
}
