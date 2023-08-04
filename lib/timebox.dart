import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  '< 1 Week',
  '1 Week',
  '2 Weeks',
  '3 Weeks',
  '1 Month'
];

class Timebox extends StatefulWidget {
  @override
  State<Timebox> createState() => _TimeboxState();
}

class _TimeboxState extends State<Timebox> {
  String dropdownValue = list.first;

  final Map<String, String> sprintPlanningTimeboxEstimates = {
    '< 1 Week': '1 hr',
    '1 Week': '2 hrs',
    '2 Weeks': '4 hrs',
    '3 Weeks': '6 hrs',
    '1 Month': '8 hrs'
  };

  final Map<String, String> sprintReviewTimeboxEstimates = {
    '< 1 Week': '30 mins',
    '1 Week': '1 hr',
    '2 Weeks': '2 hrs',
    '3 Weeks': '3 hrs',
    '1 Month': '4 hrs'
  };

  final Map<String, String> sprintRetroTimeboxEstimates = {
    '< 1 Week': '30 mins',
    '1 Week': '45 mins',
    '2 Weeks': '1 1/2 hrs',
    '3 Weeks': '2 hrs',
    '1 Month': '3 hrs'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrum Events Calculator'),
      ),
      body: GridView.count(
        key: Key('timeboxGrid'),
        crossAxisCount: 2,
        children: <Widget>[
          Image.asset(key: Key('sprintdaysIcon'),'assets/timebox/sprintdays.png', width: 50, height: 50),
          Container(
            padding: EdgeInsets.fromLTRB(45, 70, 12, 12),
            child: DropdownButton<String>(
              key: Key('sprintdurationDropdown'),
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
            key: Key('sprintplanningIcon'),
            'assets/timebox/sprintplanning.png',
            width: 150,
            height: 90,
          ),
          Text(key: Key('sprintplanningText'),'Sprint planning time: ${sprintPlanningTimeboxEstimates[dropdownValue]}'),
          Image.asset(
            key: Key('dailyscrumIcon'),
            'assets/timebox/dailyscrum.png',
            width: 150,
            height: 90,
          ),
          Text(key: Key('dailyscrumText'),'15 minutes'),
          Image.asset(
            key: Key('sprintreviewIcon'),
            'assets/timebox/sprintreview.png',
            width: 150,
            height: 90,
          ),
          Text(key: Key('sprintreviewText'),'Sprint review time: ${sprintReviewTimeboxEstimates[dropdownValue]}'),
          Image.asset(
            key: Key('sprintretroIcon'),
            'assets/timebox/sprintretro.png',
            width: 150,
            height: 90,
          ),
          Text(key: Key('sprintretroText'),'Sprint retro time: ${sprintRetroTimeboxEstimates[dropdownValue]}'),
        ],
      ),
    );
  }
}
