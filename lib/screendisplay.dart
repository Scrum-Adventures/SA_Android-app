import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelectAsset extends StatelessWidget {
  final String _asset;
  final String _title;

  SelectAsset(this._asset, this._title);

  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Image.asset(_asset),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectScreen(_asset, _title)),
    );
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: result));
    // content: Text("$result")
  }
}

class SelectScreen extends StatelessWidget {
  final String _asset;
  final String _title;
  SelectScreen(this._asset, this._title);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pop(context, _asset);
                },
                child: Image.asset(_asset))
          ],
        ),
      ),
    );
  }
}
