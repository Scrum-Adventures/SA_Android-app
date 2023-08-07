import 'package:flutter/material.dart';

class PlayInfo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('How to play'),
      )),
      body: SingleChildScrollView(
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
                      'For estimating a product backlog item relative size, choose either the t-shirt or Fibonacci card option. For voting situations, select the stoplight option to communicate your view. To determine the team capacity for a Sprint, use the Capacity Calculator. To determine the timebox for each Scrum Event, use the Scrum Events Timebox.',
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
                TextSpan(
                  text: '\n\nCapacity Calculator',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                      '\nSelect one team member to collect and enter each team  member’s  name  and  their  available  hours  to work  on  the  Sprint.  Once  all  of  the  team  member entries  are  completed,  the  total  team  hours  will  be calculated and made available as the team capacity.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: '\n\nScrum Events Timebox',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                      '\nSelect the duration of the Sprint to determine the maximum timebox for the other Scrum Events.',
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
