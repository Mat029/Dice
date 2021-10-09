import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

bool isSelected = true;

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    _saveCounter() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool("boolValue", isSelected);
    }

    return Switch(
      activeColor: Theme.of(context).primaryColor,
      value: isSelected,
      onChanged: (value) async {
        setState(() {
          isSelected = value;
          _saveCounter();
        });
      },
    );
  }
}
