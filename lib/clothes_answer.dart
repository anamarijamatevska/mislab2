import 'package:flutter/material.dart';

class OutfitAnswer extends StatelessWidget {
  String answerText;
  VoidCallback tapped;
  OutfitAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        answerText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ),
      onPressed: tapped,
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        padding: EdgeInsets.all(40),
      ),
    );
  }
}
