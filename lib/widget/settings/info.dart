import 'package:deapp/page/settings/settings2.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
          primary: Theme.of(context).hintColor,
          backgroundColor: Theme.of(context).primaryColorDark,
          shadowColor: Colors.transparent),
      onPressed: () => showModalBottomSheet(
        context: context,
        builder: (BuildContext context) => settings2(),
      ),
      child: Icon(
        Icons.keyboard_arrow_right,
        size: 45,
      ),
    );
  }
}
