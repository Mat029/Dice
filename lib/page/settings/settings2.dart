import 'package:deapp/widget/settings/appversion.dart';
import 'package:deapp/widget/settings/back.dart';
import 'package:deapp/widget/settings/mailto.dart';
import 'package:deapp/widget/settings/privacypolicy.dart';
import 'package:deapp/widget/settings/review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget sheets2() {
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
                    AppV(),
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
                    Review(),
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
                      SendMail(),
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
                    PrivacyPolicy(),
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
                      Back(),
                    ])
              ],
            ));
      });
}
