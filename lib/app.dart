import 'package:scope_inspector/playInfo.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'tshirts.dart';
import 'cards.dart';
import 'stoplight.dart';
import 'capacity.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
// import 'package:custom_splash/custom_splash.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset("assets/logo/salogont.png"),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        defaultNextScreen: Home(),
      ),
      // home: CustomSplash(
      //   imagePath: 'assets/logo/salogont.png',
      //   backGroundColor: Colors.white,
      //   animationEffect: 'fade-in',
      //   logoSize: 200,
      //   home: Home(),
      //   duration: 2600,
      //   type: CustomSplashType.StaticDuration,
      // ),
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
  }
}
