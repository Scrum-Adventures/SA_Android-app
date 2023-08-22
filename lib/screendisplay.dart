import 'package:flutter/material.dart';

class SelectAsset extends StatelessWidget {
  final String _asset;
  final String _title;
  final String _revealImageKey;

  SelectAsset(this._asset, this._title, this._revealImageKey);

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Image.asset(_asset),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SelectScreen(_asset, _title, _revealImageKey)),
    );
  }
}

class SelectScreen extends StatefulWidget {
  final String _asset;
  final String _title;
  final String _revealImageKey;

  SelectScreen(this._asset, this._title, this._revealImageKey);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  bool _revealImage =
      false; // First, set to false to show 'tap to reveal' image
  final Map<String, String> revealImageMap = {
    // map to match each class with its corresponding 'tap to reveal' image
    'cards': 'assets/cards/cardReveal.png',
    'stoplights': 'assets/stoplight/stoplightReveal.png',
    'tshirts': 'assets/tshirts/tshirtReveal.png'
  };

  Widget build(BuildContext context) {
    final revealImage = revealImageMap[widget
        ._revealImageKey]; // sets the reveal image according to the revealImageMap

    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                _revealImage = !_revealImage; // Toggles the reveal
              });
            },
            child: _revealImage
                ? Image.asset(widget._asset) // Shows the original image
                : Image.asset(revealImage!) // Shows the 'tap to reveal image'
            ),
      ),
    );
  }
}
