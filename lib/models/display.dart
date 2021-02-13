import 'dart:ui';

class Display {
  String letter;
  Map<String, bool> options;
  Color widgetColor;

  Display(this.letter, this.options, this.widgetColor);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Display &&
          runtimeType == other.runtimeType &&
          letter == other.letter &&
          options == other.options;

  @override
  int get hashCode => letter.hashCode ^ options.hashCode;

}