import 'package:scope_inspector/playInfo.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'tshirts.dart';
import 'cards.dart';
import 'stoplight.dart';
import 'capacity.dart';
import 'package:custom_splash/custom_splash.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomSplash(
        imagePath: 'assets/logo/salogont.png',
        backGroundColor: Colors.white,
        animationEffect: 'fade-in',
        logoSize: 200,
        home: Home(),
        duration: 2600,
        type: CustomSplashType.StaticDuration,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/playInfo.dart': (ctx) => PlayInfo(),
        '/tshirts.dart': (ctx) => Tshirts(),
        '/cards.dart': (ctx) => Cards(),
        '/stoplight.dart': (ctx) => Stoplights(),
        '/capacity.dart': (ctx) => Capacity(),
      },
    );
    // Gustavo is in
    // Eva is in
    //Tymee is in
  }
}
