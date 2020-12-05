import 'package:scope_inspector/capacityCalc.dart';
import 'package:scope_inspector/playInfo.dart';

import 'home.dart';
import 'tshirts.dart';
import 'cards.dart';
import 'stoplight.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (ctx) => Home(),
        '/playInfo.dart': (ctx) => PlayInfo(),
        '/tshirts.dart': (ctx) => Tshirts(),
        '/cards.dart': (ctx) => Cards(),
        '/stoplight.dart': (ctx) => Stoplights(),
        '/capacityCalc.dart': (ctx) => Capacity()
      },
    );
  }
}
