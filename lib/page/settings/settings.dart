import 'package:deapp/page/settings/settings2.dart';
import 'package:deapp/widget/settings/settings_divider.dart';
import 'package:deapp/widget/settings/settings_row.dart';
import 'package:flutter/material.dart';
import 'package:deapp/widget/settings/settings_export.dart';
import 'package:deapp/l10n/app_localizations.dart';

Widget settings(context) {
  final Size deviceSize = MediaQuery.of(context).size;
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: EdgeInsets.all(25),
        child: Text(
          AppLocalizations.of(context)!.settings,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: deviceSize.width / 12),
        ),
      ),
      SettingsDivider(),
      SettingsRow(deviceSize, AppLocalizations.of(context)!.total, Counter()),
      SettingsDivider(),
      SettingsRow(deviceSize, AppLocalizations.of(context)!.theme, DarkTheme()),
      SettingsDivider(),
      SettingsRow(deviceSize, AppLocalizations.of(context)!.show, ShowFace()),
      SettingsDivider(),
      SettingsRow(
          deviceSize,
          AppLocalizations.of(context)!.info,
          IconButton(
            onPressed: () => showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) => settings2(context),
            ),
            icon: Icon(
              Icons.keyboard_arrow_right,
              size: deviceSize.width / 7,
              color: Theme.of(context).hintColor,
            ),
          )),
    ],
  );
}
