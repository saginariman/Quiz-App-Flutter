import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int count;
  final int total;
  final Function onClearState;

  Result({Key key, this.count, this.total, this.onClearState}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    String msg;
    Widget img;
    if(count>=0 && count<=1){
      msg = 'Вы набрали плохо';
      img = Icon(Icons.mood_bad,size: 40,);
    }else if(count>=2 && count<=3){
      msg = 'Вы набрали нормально';
      img = Icon(Icons.check, size: 40,);
    }else if(count>=4 && count<=5){
      msg = 'Вы набрали отлично';
      img = Icon(Icons.mood,size: 40,);
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          )],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [Colors.red[700],Colors.red[800],Colors.red[900],],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              child: img,
              fit: BoxFit.contain,
            ),
          ),

          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),

          Text(
            'Верно ответил на $count из $total',
          ),

          Divider(
            color: Colors.white,
          ),

          FlatButton(
            child: Text(
              'Пройти еще раз'
            ),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}