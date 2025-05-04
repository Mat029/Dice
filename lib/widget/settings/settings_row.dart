import 'package:flutter/material.dart';

Widget SettingsRow(Size deviceSize, String settingText, Widget settingWidget) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: EdgeInsets.fromLTRB(deviceSize.width / 20, 25, 0, 25),
        child: Text(
          settingText,
          style: TextStyle(fontSize: deviceSize.width / 18),
        ),
      ),
      Container(
        padding: EdgeInsets.only(right: deviceSize.width / 20),
        child: settingWidget,
      ),
    ],
  );
}
