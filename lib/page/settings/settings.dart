import 'package:deapp/widget/settings/settings_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget settings(context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: EdgeInsets.all(25),
        child: Text(
          AppLocalizations.of(context)!.settings,
          textAlign: TextAlign.center,
          textScaleFactor: 1.7,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(
        thickness: 1.1,
        color: Colors.grey,
        endIndent: 17,
        height: 0,
        indent: 17,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
            child: Text(
              AppLocalizations.of(context)!.total,
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 25),
            child: Counter(),
          ),
        ],
      ),
      Divider(
        thickness: 1.1,
        color: Colors.grey,
        endIndent: 17,
        height: 0,
        indent: 17,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
            child: Text(
              AppLocalizations.of(context)!.theme,
              textScaleFactor: 1.5,
            )),
        Container(
          padding: EdgeInsets.only(right: 25),
          child: DarkTheme(),
        ),
      ]),
      Divider(
        thickness: 1.1,
        color: Colors.grey,
        endIndent: 17,
        height: 0,
        indent: 17,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
            child: Text(
              AppLocalizations.of(context)!.show,
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 25),
            child: ShowFace(),
          ),
        ],
      ),
      Divider(
          thickness: 1.1,
          color: Colors.grey,
          endIndent: 17,
          height: 0,
          indent: 17),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.fromLTRB(30, 25, 0, 25),
          child: Text(
            AppLocalizations.of(context)!.info,
            textScaleFactor: 1.5,
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 25),
          child: Info(),
        ),
      ])
    ],
  );
}
