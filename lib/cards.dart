import 'package:flutter/material.dart';
import 'package:scope_inspector/screendisplay.dart';

class Cards extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CARDS: PLACE YOUR BETS!'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            SelectAsset('assets/cards/infinity.png', 'Infinity'),
            SelectAsset('assets/cards/1.png', 'One'),
            SelectAsset('assets/cards/2.png', 'Two'),
            SelectAsset('assets/cards/3.png', 'Three'),
            SelectAsset('assets/cards/5.png', 'Five'),
            SelectAsset('assets/cards/8.png', 'Eight'),
            SelectAsset('assets/cards/13.png', 'Thirteen'),
            SelectAsset('assets/cards/21.png', 'Twenty-One'),
            SelectAsset('assets/cards/34.png', 'Thirty-Four'),
          ],
        ),
      ),
    );
  }
}
