import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  // final String _title;
  final String _asset;
  final String _route;

  ImageWidget(this._asset, this._route);

  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => Navigator.pushNamed(context, _route),
      child: Image.asset(_asset, fit: BoxFit.contain),
    );
  }
}
