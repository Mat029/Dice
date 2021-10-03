import 'package:deapp/settings/counter.dart';
import 'package:deapp/settings/langague.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:deapp/settings/darktheme.dart';

Widget sheets() {
  return BottomSheet(
    onClosing: () {},
    builder: (BuildContext context) {
      return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(15),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(17),
                    child: Text(
                      "Total counter",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Counter()
                ],
              ),
              Divider(
                thickness: 1.1,
                color: Colors.grey,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                    padding: EdgeInsets.all(17),
                    child: Text(
                      "Theme",
                      textScaleFactor: 1.5,
                    )),
                DarkTheme(),
              ]),
              Divider(
                thickness: 1.1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(17),
                    child: Text(
                      "Languague",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Language(),
                ],
              ),
              Divider(
                thickness: 1.1,
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.all(17),
                child: Text(
                  "View on Github",
                  textScaleFactor: 1.5,
                ),
              ),
            ],
          ));
    },
  );
}
