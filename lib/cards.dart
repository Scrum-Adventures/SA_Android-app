import 'package:flutter/material.dart';
import 'package:scope_inspector/screendisplay.dart';

class Cards extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CARDS: PLACE YOUR BETS!'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            SelectAsset('assets/cards/infinity.png', 'Infinity', 'cards'),
            SelectAsset('assets/cards/1.png', 'One','cards'),
            SelectAsset('assets/cards/2.png', 'Two', 'cards'),
            SelectAsset('assets/cards/3.png', 'Three', 'cards'),
            SelectAsset('assets/cards/5.png', 'Five', 'cards'),
            SelectAsset('assets/cards/8.png', 'Eight', 'cards'),
            SelectAsset('assets/cards/13.png', 'Thirteen', 'cards'),
            SelectAsset('assets/cards/21.png', 'Twenty-One', 'cards'),
            SelectAsset('assets/cards/34.png', 'Thirty-Four', 'cards'),
          ],
        ),
      );
  }
}
