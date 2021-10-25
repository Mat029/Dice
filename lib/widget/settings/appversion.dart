import 'package:flutter/material.dart';

class AppV extends StatefulWidget {
  const AppV({Key? key}) : super(key: key);

  @override
  _AppVState createState() => _AppVState();
}

String appVersion = "Error";

class _AppVState extends State<AppV> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17),
      child: Text(
        "Beta $appVersion",
        textScaleFactor: 1.5,
      ),
    );
  }
}
