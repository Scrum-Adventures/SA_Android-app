import 'package:scope_inspector/calculator.dart';
import 'package:scope_inspector/playInfo.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'tshirts.dart';
import 'cards.dart';
import 'stoplight.dart';
import 'capacity.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splash: "assets/logo/salogont.png",
          nextScreen: Home(),
          splashTransition: SplashTransition.rotationTransition,
          pageTransitionType: PageTransitionType.leftToRight,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/playInfo.dart': (ctx) => PlayInfo(),
        '/tshirts.dart': (ctx) => Tshirts(),
        '/cards.dart': (ctx) => Cards(),
        '/stoplight.dart': (ctx) => Stoplights(),
        '/capacity.dart': (ctx) => Capacity(),
        '/calculator.dart': (ctx) => Calculator(),
      },
    );
    // Gustavo is in
    // Eva is in
    // Tymee is in
  }
}
