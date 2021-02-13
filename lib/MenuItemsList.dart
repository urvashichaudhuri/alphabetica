import 'package:flutter/material.dart';

class MenuItemsList{
  List<Item> items = [
    Item('Tap Word', 'Find the word for the given letter', Colors.pink),
    Item('Select Shape', 'Match shape with number of sides', Colors.deepPurple),
  ];
}

class Item {
  final String title;
  final String description;
  final Color tileColor;

  Item(this.title, this.description, this.tileColor);
}