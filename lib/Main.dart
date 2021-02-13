import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:kids_world/widgets/MainMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.pink, Colors.yellow]
            )
          ),
          child: HomePageContent(),
        ),
      ),
    );
  }

  Future<bool> _onBackPressed(){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Do you want to quit?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'PT_Sans')),
        actions: <Widget>[
          FlatButton(
            color: Colors.yellow[700],
            child: Text("No", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'PT_Sans')),
            onPressed: () => Navigator.pop(context, false),
          ),
          FlatButton(
            color: Colors.red[700],
            child: Text("Yes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'PT_Sans')),
            onPressed: () => Navigator.pop(context, true),
          )
        ],
        backgroundColor: Colors.grey[400],
        elevation: 24.0,
      ),
      barrierDismissible: false,
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 70,
        left: 32,
        right: 30 ,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children:[
              Container(
                alignment: Alignment.center,
                width: 330,
                child: Image.asset(
                  'assets/images/mickey-minnie-transparent3-clipart.png',
                ),
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainMenu(),
            ],
          )
        ]
      ),
    );
  }
}

