import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _initialValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scrum Events Calculator'),
        ),
        body: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 42.0, 8.0, 8.0),
                      child: Text(
                        '# of Days in the new Sprint: ',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
                      child: NumberPicker(
                          itemHeight: 25,
                          minValue: 1,
                          maxValue: 31,
                          value: _initialValue,
                          onChanged: (value) => setState(() => _initialValue = value),
                          infiniteLoop: true,
                      ),
                    ),
                  ],
                )
              ]),
        ));
  }
}
