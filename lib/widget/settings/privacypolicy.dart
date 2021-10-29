import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
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
    );
  }
}
