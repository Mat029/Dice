import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMail extends StatefulWidget {
  const SendMail({Key? key}) : super(key: key);

  @override
  _SendMailState createState() => _SendMailState();
}

class _SendMailState extends State<SendMail> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final mailto = "mat029studiocontact@gmail.com";
        final subject = "Contact for dice app";
        final message = "thanks to write you mail in english or french";
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
    );
  }
}
