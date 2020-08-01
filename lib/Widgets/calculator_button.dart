import 'package:calculator/Widgets/constants.dart';
import 'package:calculator/state/calc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  //final double buttonRadius;
  final Color textColor;
  final String buttonOutput;
  final Color buttonColor;
  final int flex;
  final bool isEqualsSign;
  final bool isClear;
  final NeumorphicBoxShape neumorphicBoxShape;
  CalculatorButton({
    Key key,
    @required this.buttonOutput,
    @required this.buttonText,
    this.buttonColor = CalcTheme.backgroundColor,
    this.textColor = Constants.white,
    this.flex = 1,
    this.neumorphicBoxShape = const NeumorphicBoxShape.circle(),
    this.isEqualsSign = false,
    this.isClear = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: NeumorphicButton(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        style: NeumorphicStyle(
          color: buttonColor,
          boxShape: neumorphicBoxShape,
          shape: NeumorphicShape.concave,
        ),
        child: Center(
          child: NeumorphicText(
            buttonText,
            style: CalcTheme.lightText,
            textStyle: NeumorphicTextStyle(
              fontSize: 24,
            ),
          ),
        ),
        onPressed: () => Provider.of<Calc>(context, listen: false)
            .buttonPressed(buttonOutput, isClear, isEqualsSign),
      ),
    );
  }
}
