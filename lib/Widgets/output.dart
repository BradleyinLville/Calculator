import 'package:calculator/Widgets/constants.dart';
import 'package:calculator/state/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

class Output extends StatelessWidget {
  final Color darkTextColor = CalcTheme.textColor;
  final double fontSize = 42;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: CalcTheme.lightBackground,
      child: Container(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              context.watch<Calc>().calcExpression,
              style: TextStyle(
                color: darkTextColor,
                fontSize: fontSize,
              ),
            ),
            Text(
              context.watch<Calc>().calcAnswer,
              style: TextStyle(
                color: darkTextColor,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
