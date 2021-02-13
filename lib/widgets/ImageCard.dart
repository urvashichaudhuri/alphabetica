import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kids_world/widgets/WordMatch.dart';
import 'package:provider/provider.dart';

import 'MenuItems.dart';

class ImageCard extends StatefulWidget {
  final String imageUrl;
  final bool rightAns;
  final Color widgetColor;
  final double borderWidth;
  //final ValueSetter<bool> valueSetter;

  // ImageCard(
  //     {Key key, this.imageUrl, this.rightAns, this.widgetColor, this.borderWidth, this.valueSetter}) : super(key: key);
  ImageCard(
      {Key key, this.imageUrl, this.rightAns, this.widgetColor, this.borderWidth}) : super(key: key);

  @override
  _ImageCardState createState() => _ImageCardState(widgetColor, borderWidth);
}

class _ImageCardState extends State<ImageCard> {
  Color imageTileColor;
  double imageBorderWidth;

  _ImageCardState(Color widgetColor, double borderWidth){
    this.imageTileColor = widgetColor;
    this.imageBorderWidth = borderWidth;
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          padding: const EdgeInsets.all(9.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: imageBorderWidth,
                color: imageTileColor,
                style: BorderStyle.solid,
              )
          ),
          child: FittedBox(
            child: Image.asset('assets/images/${widget.imageUrl}'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      onTap: () => setState(() {
        _handleTap();
      }),
    );
  }

  void _handleTap() {
    if (this.widget.rightAns) {
      //valueSetter(true);
      imageTileColor = Colors.green;
      _showResult(
          context, FontAwesomeIcons.solidSmile, Colors.green, 'Well Done!');
      Future.delayed(const Duration(milliseconds: 1000), () {
        Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) => WordMatch()));
      });
    }else{
      //valueSetter(false);
      imageTileColor = Colors.red[600];
      _showResult(context, FontAwesomeIcons.solidSadCry, Colors.red, 'Try Again!');
    }
    imageBorderWidth = 5;
  }

  void _showResult(BuildContext context, IconData icon, Color color, String text) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Row(
          children: [
            SizedBox(width: 100.0),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Icon(icon, size: 30.0),
          ]
        ),
        duration: Duration(milliseconds: 1200),
      )
    );
  }
}

