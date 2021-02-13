import 'dart:math';

import 'package:flutter/material.dart';
import 'file:///C:/Users/urvas/AndroidStudioProjects/kids_world/lib/widgets/LetterCard.dart';
import 'file:///C:/Users/urvas/AndroidStudioProjects/kids_world/lib/widgets/ScoreCard.dart';
import 'file:///C:/Users/urvas/AndroidStudioProjects/kids_world/lib/widgets/ImageCard.dart';
import 'package:kids_world/LetterImageMap.dart';
import 'package:kids_world/models/display.dart';
import 'package:kids_world/Main.dart';

// class WordMatch extends StatelessWidget {
//   int score = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PlayWordMatch.initScore(score),
//     );
//   }
// }

class WordMatch extends StatelessWidget {
  Display display;
  //int score;

  // PlayWordMatch.initScore(int score){
  //   this.score = score;
  //   PlayWordMatch();
  // }
  WordMatch(){
    LetterImageMap obj = LetterImageMap();
    String letter = obj.getLetter();
    Map<String, bool> listOfImages = obj.getFourImages(letter);
    Color randomColor = generateColor();
    display = Display(letter, listOfImages, randomColor);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: display.widgetColor,
          shadowColor: Colors.red,
          title: Text('Find the word with letter'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyApp()));
            },
          ),
        ),
        body: SetLayout(display: display)
      ),
    );
  }
}

class SetLayout extends StatefulWidget {
  final Display display;
  SetLayout({Key key, this.display}) : super(key: key);

  @override
  _SetLayoutState createState() => _SetLayoutState();
}

class _SetLayoutState extends State<SetLayout> {
  int score=0;
  @override
  Widget build(BuildContext context) {
    var listOfImages = List<Widget>();
    widget.display.options.forEach((key, value) => {
      // listOfImages.add(
      //   ImageCard(
      //     imageUrl: key, rightAns: value, widgetColor: widget.display.widgetColor, borderWidth: 2, valueSetter: (result){
      //       setState(() {
      //         if(result)
      //           score++;
      //         else
      //           score = 0;
      //       });
      // }))
      listOfImages.add(
          ImageCard(
              imageUrl: key, rightAns: value, widgetColor: widget.display.widgetColor, borderWidth: 2))
    });
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LetterCard(letter: widget.display.letter, widgetColor: widget.display.widgetColor)
          ]
        ),
        GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.only(
            top:20.0,
            left: 25.0,
            right: 25.0,
            bottom: 10.0
          ),
          shrinkWrap: true,
          children: listOfImages,
        ),
        // Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       ScoreCard(widgetColor: widget.display.widgetColor, score: score)
        //     ]
        // ),
      ]
    );
  }
}

Color generateColor() {
  Color color = Color(Random().nextInt(0xff5733)).withAlpha(0xff);
  while(color.computeLuminance() > 0.6)
    color = Color(Random().nextInt(0xff5733)).withAlpha(0xff);
  return color;
}