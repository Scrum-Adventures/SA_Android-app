import 'package:flutter/material.dart';

class PlayInfo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('How to play'),
        )),
        body: Container(
          color: Colors.white,
          alignment: Alignment(0, 0),
          padding: EdgeInsets.all(10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'For estimating a product backlog item relative size, choose either the t-shirt or Fibonacci card option. For voting situations, select the stoplight option to communicate your view.',
                    style: TextStyle(
                      color: Color.fromRGBO(47, 86, 163, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: '\n\nT-Shirts',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text:
                        '\nPick a t-shirt size to estimate the relative sizing of the selected product backlog item and show your t-shirt to the team.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text: '\n\nCards',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text:
                        '\nChoose a Fibonacci card to estimate the relative sizing of the selected product backlog item and show your card to the team.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text: '\n\nStoplights',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text:
                        '\nSelect a stoplight color to indicate the following:\nGreen = Thumbs up / Agree\nYellow = Not sure / Need further discussion \nRed = Thumbs down / Do not agree',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                ]),
          ),
        ),
      );
  }
}
