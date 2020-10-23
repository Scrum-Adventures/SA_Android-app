import 'package:flutter/material.dart';
import 'package:scope_inspector/screendisplay.dart';

class Stoplights extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('STOPLIGHTS: READY, SET, GO!!!'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          SelectAsset('assets/stoplight/1.png', 'STOP!'),
          SelectAsset('assets/stoplight/2.png', 'SLOW DOWN!'),
          SelectAsset('assets/stoplight/3.png', 'GOOOO!'),
        ],
      ),
    ));
  }
}
