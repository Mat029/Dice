import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShowFace extends StatefulWidget {
  const ShowFace({Key? key}) : super(key: key);

  @override
  _ShowFaceState createState() => _ShowFaceState();
}

bool showFace = true;

class _ShowFaceState extends State<ShowFace> {
  @override
  Widget build(BuildContext context) {
    _saveFace() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool("Face", showFace);
    }

    return Switch(
      activeColor: Theme.of(context).primaryColor,
      value: showFace,
      onChanged: (value) async {
        setState(() {
          showFace = value;
          _saveFace();
        });
      },
    );
  }
}
