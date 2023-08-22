import 'package:flutter/material.dart';
import 'package:scope_inspector/screendisplay.dart';

class Tshirts extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('T-SHIRTS: FIND THE RIGHT FIT!'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            SelectAsset('assets/tshirts/XS.png', 'Extra Small', 'tshirts'),
            SelectAsset('assets/tshirts/S.png', 'Small', 'tshirts'),
            SelectAsset('assets/tshirts/M.png', 'Medium', 'tshirts'),
            SelectAsset('assets/tshirts/L.png', 'Large', 'tshirts'),
            SelectAsset('assets/tshirts/XL.png', 'Extra Large', 'tshirts'),
          ],
        ),
      );
  }
}
