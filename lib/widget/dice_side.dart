import 'package:deapp/widget/settings/darktheme.dart';
import 'package:flutter/material.dart';

class SidesImage extends StatelessWidget {
  const SidesImage({Key? key, required this.number, required this.x})
      : super(key: key);
  final int number;

  final double x;

  @override
  Widget build(BuildContext context) {
    var imageArrayLight = [
      'one.png',
      'two.png',
      'three.png',
      'four.png',
      'five.png',
      'six.png'
    ];
    var imageArrayDark = [
      "dark_one.png",
      "dark_two.png",
      "dark_three.png",
      "dark_four.png",
      "dark_five.png",
      "dark_six.png"
    ];
    if ((themeOption[2] == true) |
        (themeOption[1] == true &&
            MediaQuery.of(context).platformBrightness == Brightness.dark)) {
      return Image.asset(
        "image/" + imageArrayDark[number - 1],
        height: x,
        width: x,
      );
    } else {
      return Image.asset(
        "image/" + imageArrayLight[number - 1],
        height: x,
        width: x,
      );
    }
  }
}
