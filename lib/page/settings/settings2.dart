import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:launch_review/launch_review.dart';
import 'package:url_launcher/url_launcher.dart';

String appVersion = "Error";

Widget settings2() {
  return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(17),
                      child: Text(
                        AppLocalizations.of(context)!.version,
                        textScaleFactor: 1.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(17),
                      child: Text(
                        "Beta $appVersion",
                        textScaleFactor: 1.7,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
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
                        AppLocalizations.of(context)!.review,
                        textScaleFactor: 1.5,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        LaunchReview.launch();
                      },
                      child: Icon(Icons.star),
                    ),
                  ],
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
                            AppLocalizations.of(context)!.contact,
                            textScaleFactor: 1.5,
                          )),
                      TextButton(
                        onPressed: () async {
                          final mailto = "mat029studiocontact@gmail.com";
                          final subject = "Contact for dice app";
                          final message =
                              "thanks to write you mail in english or french";
                          final mailurl =
                              "mailto:$mailto?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}";
                          if (await canLaunch(mailurl)) {
                            await launch(
                              mailurl,
                              forceSafariVC: false,
                            );
                          }
                        },
                        child: Icon(Icons.mail),
                      ),
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
                        AppLocalizations.of(context)!.privacy,
                        textScaleFactor: 1.5,
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        final privacyurl =
                            "https://github.com/Mat029/mat029studio_privacy/blob/main/privacy_policy_dice.md";
                        if (await canLaunch(privacyurl)) {
                          await launch(
                            privacyurl,
                            forceSafariVC: false,
                          );
                        }
                      },
                      child: Icon(Icons.privacy_tip_sharp),
                    ),
                  ],
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
                          AppLocalizations.of(context)!.back,
                          textScaleFactor: 1.5,
                        ),
                      ),
                      ElevatedButton(
                        style: OutlinedButton.styleFrom(
                            primary: Theme.of(context).hintColor,
                            backgroundColor: Theme.of(context).primaryColorDark,
                            shadowColor: Colors.transparent),
                        onPressed: () => Navigator.pop(context),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 45,
                        ),
                      ),
                    ])
              ],
            ));
      });
}
