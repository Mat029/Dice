import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
          primary: Theme.of(context).hintColor,
          backgroundColor: Theme.of(context).primaryColorDark,
          shadowColor: Colors.transparent),
      onPressed: () => Navigator.pop(context),
      child: Icon(
        Icons.keyboard_arrow_left,
        size: 45,
      ),
    );
  }
}
