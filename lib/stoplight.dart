import 'package:flutter/material.dart';
import 'package:scope_inspector/screendisplay.dart';

class Stoplights extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STOPLIGHTS: READY, SET, GO!!!'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          SelectAsset('assets/stoplight/1.png', 'STOP!', 'stoplights'),
          SelectAsset('assets/stoplight/2.png', 'SLOW DOWN!', 'stoplights'),
          SelectAsset('assets/stoplight/3.png', 'GOOOO!', 'stoplights'),
        ],
      ),
    );
  }
}
