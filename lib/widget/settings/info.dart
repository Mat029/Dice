import 'package:deapp/page/settings/settings2.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).hintColor,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        shadowColor: Colors.black12,
      ),
      onPressed: () => showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) => settings2(context),
      ),
      child: Icon(
        Icons.keyboard_arrow_right,
        size: 45,
      ),
    );
  }
}
