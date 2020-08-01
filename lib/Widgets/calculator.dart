import 'package:calculator/Widgets/calculator_button.dart';
import 'package:calculator/Widgets/output.dart';
import 'package:calculator/state/calc.dart';
import 'package:calculator/Widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Calc(),
      child: NeumorphicApp(
        debugShowCheckedModeBanner: false,
        home: Neumorphic(
          style: CalcTheme.lightBackground,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //* Output
                Expanded(
                  flex: 5,
                  child: Output(),
                ),
                //* C
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CalculatorButton(
                        isClear: true,
                        buttonOutput: "0",
                        buttonText: 'C',
                        textColor: Constants.salmon,
                      ),
                      CalculatorButton(
                        buttonOutput: "*-1", //* entire expression * -1
                        buttonText: '+/-',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: "/",
                        buttonText: '÷',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: '*',
                        buttonText: '×',
                        textColor: Constants.lightGray,
                      ),
                    ],
                  ),
                ),
                //*789
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CalculatorButton(
                        buttonOutput: "7",
                        buttonText: '7',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: '8',
                        buttonText: '8',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: '9',
                        buttonText: '9',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: '-',
                        buttonText: '-',
                        textColor: Constants.lightGray,
                      ),
                    ],
                  ),
                ),
                //*456
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CalculatorButton(
                        buttonOutput: '4',
                        buttonText: '4',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: '5',
                        buttonText: '5',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: '6',
                        buttonText: '6',
                        textColor: Constants.lightGray,
                      ),
                      CalculatorButton(
                        buttonOutput: '+',
                        buttonText: '+',
                        textColor: Constants.lightGray,
                      ),
                    ],
                  ),
                ),
                //*123
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  CalculatorButton(
                                    buttonOutput: '1',
                                    buttonText: '1',
                                    textColor: Constants.lightGray,
                                  ),
                                  CalculatorButton(
                                    buttonOutput: '2',
                                    buttonText: '2',
                                    textColor: Constants.lightGray,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  CalculatorButton(
                                    flex: 2,
                                    buttonOutput: '0',
                                    buttonText: '0',
                                    textColor: Constants.lightGray,
                                    neumorphicBoxShape:
                                        NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(60),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  CalculatorButton(
                                    buttonOutput: '3',
                                    buttonText: '3',
                                    textColor: Constants.lightGray,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  CalculatorButton(
                                    buttonOutput: '.',
                                    buttonText: '.',
                                    textColor: Constants.lightGray,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        //flex: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  CalculatorButton(
                                    flex: 2,
                                    buttonOutput: '=',
                                    buttonText: '=',
                                    isEqualsSign: true,
                                    neumorphicBoxShape:
                                        NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(60),
                                    ),
                                    textColor: Constants.salmon,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
