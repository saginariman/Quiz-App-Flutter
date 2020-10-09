import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  String title;
  bool isCorrect;
  final Function onChangeAnswer;
  Answer ({Key key, this.title, this.onChangeAnswer, this.isCorrect}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: ()=>onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 5.0,
        ),
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [Colors.red[700],Colors.red[800],Colors.red[900],],
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      )
    );
  }
}