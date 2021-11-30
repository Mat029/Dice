import 'package:deapp/widget/settings/settings_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget settings() {
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
                      AppLocalizations.of(context)!.total,
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
                      AppLocalizations.of(context)!.theme,
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
                      AppLocalizations.of(context)!.show,
                      textScaleFactor: 1.5,
                    ),
                  ),
                  ShowFace(),
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
                    AppLocalizations.of(context)!.info,
                    textScaleFactor: 1.5,
                  ),
                ),
                Info(),
              ])
            ],
          ));
    },
  );
}
