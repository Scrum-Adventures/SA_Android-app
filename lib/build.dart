import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  // final String _title;
  final String _asset;
  final String _route;

  ImageWidget(this._asset, this._route);

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, _route),
      child: Image.asset(_asset, fit: BoxFit.contain),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String _text;

  TextWidget(this._text);

  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(color: Colors.blue)
          )
        ),
        onPressed: null,
        child: Text(_text, style: TextStyle(fontSize: 18.0),),
    );
  }
}
