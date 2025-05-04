import 'dart:io';
import 'package:deapp/widget/settings/settings_divider.dart';
import 'package:deapp/widget/settings/settings_row.dart';
import 'package:flutter/material.dart';
import 'package:deapp/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

String appVersion = "Error";
String androidAppBundleId = "com.mat029studio.dice";
//TODO : Add ios app if needed
String appstoreAppId = "";

Widget settings2(context) {
  final Size deviceSize = MediaQuery.of(context).size;
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SettingsRow(
          deviceSize,
          AppLocalizations.of(context)!.version,
          Text(
            "$appVersion",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: deviceSize.width / 16),
          )),
      SettingsDivider(),
      SettingsRow(
          deviceSize,
          AppLocalizations.of(context)!.review,
          IconButton(
            onPressed: () async {
              String strURL = Platform.isAndroid
                  ? "https://play.google.com/store/apps/details?id=$androidAppBundleId"
                  : "https://itunes.apple.com/it/app/$appstoreAppId?mt=8";

              if (await launchUrl(Uri.parse(strURL), mode: LaunchMode.externalApplication)) {
                await canLaunchUrl(Uri.parse(strURL));
              }
            },
            icon: Icon(
              Icons.star,
              size: deviceSize.width / 12,
            ),
          )),
      SettingsDivider(),
      SettingsRow(
          deviceSize,
          AppLocalizations.of(context)!.contact,
          IconButton(
              onPressed: () async {
                final mailto = "mat029studiocontact@gmail.com";
                final subject = "Contact for dice app";
                final message = "thanks to write you mail in english or french";
                final Uri mailurl =
                    Uri.parse("mailto:$mailto?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}");
                if (await canLaunchUrl(mailurl)) {
                  await launchUrl(mailurl);
                }
              },
              icon: Icon(
                Icons.mail,
                size: deviceSize.width / 12,
              ))),
      SettingsDivider(),
      SettingsRow(
          deviceSize,
          AppLocalizations.of(context)!.privacy,
          IconButton(
              onPressed: () async {
                final Uri privacyurl =
                    Uri.parse("https://github.com/Mat029/mat029studio_privacy/blob/main/privacy_policy_dice.md");
                if (await canLaunchUrl(privacyurl)) {
                  await launchUrl(privacyurl);
                }
              },
              icon: Icon(
                Icons.privacy_tip_sharp,
                size: deviceSize.width / 12,
              ))),
      SettingsDivider(),
      SettingsRow(
        deviceSize,
        AppLocalizations.of(context)!.back,
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: deviceSize.width / 7,
            color: Theme.of(context).hintColor,
          ),
        ),
      ),
    ],
  );
}
