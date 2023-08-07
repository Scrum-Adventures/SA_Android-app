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
    '2 Weeks': '1.5 hrs',
    '3 Weeks': '2 hrs',
    '1 Month': '3 hrs'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrum Events Timebox'),
      ),
      body: GridView.count(
        key: Key('timeboxGrid'),
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 1.30,
        crossAxisCount: 2,
        children: <Widget>[
          Image.asset(
              key: Key('sprintdaysIcon'),
              'assets/timebox/sprintduration.png',
              width: 50,
              height: 50),
          Container(
            alignment: Alignment.center,
            child: DropdownButton<String>(
              key: Key('sprintdurationDropdown'),
              style: TextStyle(fontFamily: 'Shrikhand', color: Colors.black, fontSize: 20),
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
          Container(
            alignment: Alignment.center,
            child: Text(
              key: Key('sprintplanningText'),
              style: TextStyle(fontFamily: 'Shrikhand', fontSize: 28),
              '${sprintPlanningTimeboxEstimates[dropdownValue]}',
            ),
          ),
          Image.asset(
            key: Key('dailyscrumIcon'),
            'assets/timebox/dailyscrum.png',
            width: 150,
            height: 90,
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                  key: Key('dailyscrumText'),
                  style: TextStyle(fontFamily: 'Shrikhand', fontSize: 28),
                  '15 mins')),
          Image.asset(
            key: Key('sprintreviewIcon'),
            'assets/timebox/sprintreview.png',
            width: 150,
            height: 90,
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                  key: Key('sprintreviewText'),
                  style: TextStyle(fontFamily: 'Shrikhand', fontSize: 28),
                  '${sprintReviewTimeboxEstimates[dropdownValue]}')),
          Image.asset(
            key: Key('sprintretroIcon'),
            'assets/timebox/sprintretro.png',
            width: 150,
            height: 90,
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                  key: Key('sprintretroText'),
                  style: TextStyle(fontFamily: 'Shrikhand', fontSize: 28),
                  '${sprintRetroTimeboxEstimates[dropdownValue]}')),
        ],
      ),
    );
  }
}
