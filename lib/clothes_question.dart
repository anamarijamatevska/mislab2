import 'package:flutter/material.dart';

class OutfitQuestion extends StatelessWidget {
  String _questionContext;
  OutfitQuestion(this._questionContext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        _questionContext,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    );
  }
}
