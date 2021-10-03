import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

int? languague = 1;

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    _saveLang() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt("language", languague!);
    }

    return DropdownButton(
        value: languague,
        items: [
          DropdownMenuItem(
            child: Text("Allemand"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("Anglais"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("Espagnol"),
            value: 3,
          ),
          DropdownMenuItem(
            child: Text("Français"),
            value: 4,
          ),
        ],
        onChanged: (value) {
          setState(() {
            languague = value as int?;
            _saveLang();
          });
        });
  }
}
