import 'package:scope_inspector/capacity.dart';
import 'package:scope_inspector/cards.dart';
import 'package:scope_inspector/playInfo.dart';
import 'package:scope_inspector/stoplight.dart';
import 'package:scope_inspector/timebox.dart';
import 'package:scope_inspector/tshirts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'build.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Image img = Image.asset('assets/logo/salogont.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Color(0xfff77d29)), //f77d29
              child: Center(child: CircleAvatar(radius: 50, backgroundImage: img.image))),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            leading: Icon(Icons.back_hand),
            title: Text('Instructions'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PlayInfo()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('T-shirts'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Tshirts()));
            },
          ),
          ListTile(
            leading: Icon(Icons.gamepad),
            title: Text('Poker Cards'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Cards()));
            },
          ),
          ListTile(
            leading: Icon(Icons.lightbulb),
            title: Text('Stoplight'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Stoplights()));
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Calculator'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Capacity()));
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Timebox'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Timebox()));
            },
          )
        ])),
        appBar: AppBar(
          title: Text('SCRUM ADVENTURES TOOLBOX'),
        ),
        body: new GridView.count(crossAxisCount: 2, children: <Widget>[
          ImageWidget('assets/home/HTP.png', '/playInfo.dart'),
          ImageWidget('assets/home/tshirt.png', '/tshirts.dart'),
          ImageWidget('assets/home/card.png', '/cards.dart'),
          ImageWidget('assets/home/stoplight.png', '/stoplight.dart'),
          ImageWidget('assets/home/ccLogo.png', '/capacity.dart'),
          ImageWidget('assets/home/timebox.png', '/timebox.dart')
        ]),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 10.0,
          icon: Icon(Icons.info_outline),
          label: Text("About Us"),
          onPressed: () => launch('https://scrumadventures.com/'),
        ));
  }
}
