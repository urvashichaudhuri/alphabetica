import 'package:flutter/material.dart';

class LetterCard extends StatelessWidget {
  final String letter;
  final Color widgetColor;

  LetterCard({Key key, this.letter, this.widgetColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      child: Text(
        letter,
        style: TextStyle(fontSize: 80, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: widgetColor,
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(20.0),
    );
  }
}