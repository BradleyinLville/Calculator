import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Constants {
  static const Color lightGray = Color(0xFFE5E5E5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color salmon = Color(0xFFFF6870);
  static const Color darkGray = Color(0xFF414141);
  static const Color lightishGray = Color(0xFF6D6767);
  static const Color paleGreen = Color(0xFFC6D8C6);
}

class DarkTheme extends CalcTheme {
  static const NeumorphicStyle darkBackground =
      NeumorphicStyle(color: backgroundColor);
  static const NeumorphicStyle darkText = NeumorphicStyle(color: textColor);
  static const NeumorphicStyle darkAltText =
      NeumorphicStyle(color: variantColor);
  static const NeumorphicStyle darkAccText =
      NeumorphicStyle(color: accentColor);
  static const Color backgroundColor = Constants.darkGray;
  static const Color textColor = Constants.lightGray;
  static const Color variantColor = Constants.lightishGray;
  static const Color accentColor = Constants.salmon;
  static const LightSource lightSource = LightSource.topLeft;
}

//C6D8C6
class CalcTheme {
  static const NeumorphicStyle lightBackground =
      NeumorphicStyle(color: backgroundColor);
  static const NeumorphicStyle lightText = NeumorphicStyle(color: textColor);
  static const NeumorphicStyle lightAccText =
      NeumorphicStyle(color: accentColor);
  static const Color backgroundColor = Constants.paleGreen;
  static const Color textColor = Constants.darkGray;
  static const Color accentColor = Constants.salmon;
  static const LightSource lightSource = LightSource.topLeft;
  var theme;
}
