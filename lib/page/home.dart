import 'package:flutter/material.dart';
import 'package:deapp/page/roll.dart';
import "package:deapp/l10n/app_localizations.dart";
import 'settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Base extends StatelessWidget {
  const Base({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InitPage(),
    );
  }
}

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

int nbofdice = 1;
int nbofsides = 6;
_saveDice() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt("dice", nbofdice);
}

_saveSide() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt("side", nbofsides);
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return SliderTheme(
      data: SliderThemeData(
          valueIndicatorColor: Theme.of(context).primaryColor,
          trackHeight: deviceSize.height / 120,
          valueIndicatorTextStyle:
              TextStyle(fontSize: deviceSize.width / 16, color: Colors.white, fontWeight: FontWeight.w700),
          valueIndicatorShape: CustomValueIndicatorShape(Theme.of(context).primaryColor, deviceSize),
          showValueIndicator: ShowValueIndicator.always),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: (deviceSize.height) / 14,
            width: deviceSize.width,
          ),
          Text(
            AppLocalizations.of(context)!.nbdices,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: deviceSize.width / 11),
          ),
          SizedBox(
              width: deviceSize.width / 1.1,
              child: Slider(
                  activeColor: Theme.of(context).primaryColor,
                  value: nbofdice.ceilToDouble(),
                  min: 1,
                  max: 10,
                  divisions: 9,
                  label: nbofdice.toString(),
                  onChanged: (value) => setState(() {
                        nbofdice = value.toInt();
                        _saveDice();
                      }))),
          Text(
            AppLocalizations.of(context)!.nbsides,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: deviceSize.width / 11),
          ),
          SizedBox(
              width: deviceSize.width / 1.1,
              child: Slider(
                  activeColor: Theme.of(context).primaryColor,
                  value: nbofsides.toDouble(),
                  min: 2,
                  max: 100,
                  divisions: 99,
                  label: nbofsides.toString(),
                  onChanged: (value) => setState(() {
                        nbofsides = value.toInt();
                        _saveSide();
                      }))),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyHomePage(dice: nbofdice, sides: nbofsides);
                  },
                ),
              );
            },
            child: Text(
              AppLocalizations.of(context)!.roll,
              style: TextStyle(fontSize: deviceSize.width / 11, color: Colors.white, fontWeight: FontWeight.w900),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              padding: EdgeInsets.fromLTRB(36, 12, 36, 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(deviceSize.width / 18),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) => settings(context),
            ),
            child: Column(
              children: [
                Icon(Icons.keyboard_arrow_up, size: deviceSize.width / 6),
                Text(
                  AppLocalizations.of(context)!.more,
                  style: TextStyle(fontSize: deviceSize.width / 15),
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).hintColor,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              shadowColor: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomValueIndicatorShape extends SliderComponentShape {
  final Color Mycolor;
  final Size deviceSize;

  CustomValueIndicatorShape(this.Mycolor, this.deviceSize);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    // You can dynamically calculate this if needed
    return Size(60, 40 + deviceSize.height / 10);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final double textWidth = labelPainter.width;
    final double textHeight = labelPainter.height;

    final double boxWidth = textWidth + 2 * deviceSize.width / 30;
    final double boxHeight = textHeight + 2 * deviceSize.width / 50;

    //final double totalHeight = boxHeight + deviceSize.height / 50;

    final Offset boxCenter = Offset(center.dx, center.dy - deviceSize.height / 10 / 2);

    // Draw the rounded rectangle
    final Rect rect = Rect.fromCenter(
      center: boxCenter,
      width: boxWidth,
      height: boxHeight,
    );

    final RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(deviceSize.width / 35));
    final Paint paint = Paint()
      ..color = Mycolor
      ..style = PaintingStyle.fill;

    canvas.drawRRect(rRect, paint);

    // Draw a triangle pointer
    /*final Path triangle = Path();
    triangle.moveTo(center.dx - deviceSize.width / 70, boxCenter.dy + boxHeight / 2);
    triangle.lineTo(center.dx + deviceSize.width / 70, boxCenter.dy + boxHeight / 2);
    triangle.lineTo(center.dx, center.dy);
    triangle.close();

    canvas.drawPath(triangle, paint);*/

    // Draw the label text in the center
    labelPainter.paint(
      canvas,
      Offset(
        boxCenter.dx - labelPainter.width / 2,
        boxCenter.dy - labelPainter.height / 2,
      ),
    );
  }
}
