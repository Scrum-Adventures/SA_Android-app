import 'build.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SCRUM ADVENTURES: TOOLBOX'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          ImageWidget('assets/home/HTP.png', '/playInfo.dart'),
          ImageWidget('assets/home/tshirt.png', '/tshirts.dart'),
          ImageWidget('assets/home/card.png', '/cards.dart'),
          ImageWidget('assets/home/stoplight.png', '/stoplight.dart'),
        ],
      ),
    );
  }
}
