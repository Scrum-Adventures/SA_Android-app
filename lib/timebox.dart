import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  'SELECT',
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
        title: Text('SCRUM EVENTS TIMEBOX'),
      ),
      body: GridView.count(
        key: Key('timeboxGrid'),
        childAspectRatio: 1.35,
        crossAxisCount: 2,
        children: <Widget>[
          Image.asset(
              key: Key('sprintdurationIcon'),
              'assets/timebox/sprintduration.png',
              width: 75,
              height: 75),
          Container(
            alignment: Alignment.center,
            child: DropdownButton<String>(
              key: Key('sprintdurationDropdown'),
              style: TextStyle(
                  fontFamily: 'Shrikhand', color: Colors.black, fontSize: 20),
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
          if (dropdownValue != 'SELECT') ...[
            Image.asset(
              key: Key('sprintplanningIcon'),
              'assets/timebox/sprintplanning.png',
              width: 75,
              height: 75,
            ),
            Column(
              children: [
                Text(
                  'Maximum Duration',
                  style:TextStyle(fontFamily: 'Shrikhand', fontSize: 18),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                  alignment: Alignment.center,
                  child: Text(
                    key: Key('sprintplanningText'),
                    style: TextStyle(fontFamily: 'Shrikhand', fontSize: 28),
                    '${sprintPlanningTimeboxEstimates[dropdownValue]}',
                  ),
                ),
              ],
            ),
            Image.asset(
              key: Key('dailyscrumIcon'),
              'assets/timebox/dailyscrum.png',
              width: 75,
              height: 75,
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
              width: 75,
              height: 75,
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
              width: 75,
              height: 75,
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                    key: Key('sprintretroText'),
                    style: TextStyle(fontFamily: 'Shrikhand', fontSize: 28),
                    '${sprintRetroTimeboxEstimates[dropdownValue]}')),
          ],
        ],
      ),
    );
  }
}
