import 'package:deapp/widget/settings/appversion.dart';
import 'package:deapp/widget/settings/back.dart';
import 'package:flutter/material.dart';

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
                        "Version",
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
                        "Send a feedback (Not Working)",
                        textScaleFactor: 1.5,
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
                            "Contact us (Not Working)",
                            textScaleFactor: 1.5,
                          )),
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
                        "Privacy Policy (Not Working)",
                        textScaleFactor: 1.5,
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
                          "Back",
                          textScaleFactor: 1.5,
                        ),
                      ),
                      Back(),
                    ])
              ],
            ));
      });
}
