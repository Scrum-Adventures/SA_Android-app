import 'package:url_launcher/url_launcher.dart';
import 'build.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SCRUM ADVENTURES TOOLBOX'),
        ),
        body: new GridView.count(crossAxisCount: 2, children: <Widget>[
          ImageWidget('assets/home/HTP.png', '/playInfo.dart'),
          ImageWidget('assets/home/tshirt.png', '/tshirts.dart'),
          ImageWidget('assets/home/card.png', '/cards.dart'),
          ImageWidget('assets/home/stoplight.png', '/stoplight.dart'),
          ImageWidget('assets/home/ccLogo.png', '/capacity.dart')
        ]),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 10.0,
          icon: Icon(Icons.info_outline),
          label: Text("About Us"),
          onPressed: () => launch('https://scrumadventures.com/'),
        ));
  }
}
