import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  '< 1 Week',
  '1 Week',
  '2 Weeks',
  '3 Weeks',
  '1 Month'
];

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrum Events Calculator'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Image.asset('assets/timebox/sprintdays.png', width: 50, height: 50),
          Container(
            padding: EdgeInsets.fromLTRB(45, 70, 12, 12),
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
            ),
          ),
          Image.asset(
            'assets/timebox/sprintplanning.png',
            width: 150,
            height: 90,
          ),
          Text('Sprint planning time'),
          Image.asset(
            'assets/timebox/dailyscrum.png',
            width: 150,
            height: 90,
          ),
          Text('15 minutes'),
          Image.asset(
            'assets/timebox/sprintreview.png',
            width: 150,
            height: 90,
          ),
          Text('Sprint review time'),
          Image.asset(
            'assets/timebox/sprintretro.png',
            width: 150,
            height: 90,
          )
        ],
      ),
    );
  }
}
