import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  Color widgetColor;
  int score;

  ScoreCard ({Key key, this.widgetColor, this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("123");
    return Container(
      child: Text(
        score.toString(),
        style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold, color: widgetColor, fontFamily: 'Nerko_One'),
        textAlign: TextAlign.center,
      ),
    );
  }
}