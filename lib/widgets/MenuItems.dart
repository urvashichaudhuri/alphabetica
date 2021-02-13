import 'package:flutter/material.dart';
import 'package:kids_world/widgets/WordMatch.dart';

Widget menuItems(BuildContext context){
  return ListView(
    reverse: true,
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Card(
          child: ListTile(
            title: Text('Tap Word', style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'PT_Sans')),
            subtitle: Text('Find the word for the given letter', style: TextStyle(fontSize: 15, color: Colors.white)),
            tileColor: Colors.pink,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WordMatch()));
            }
          ),
        ),
      ),
    ],
  );
}