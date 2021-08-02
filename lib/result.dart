import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

 String get resultPhrase{
   String resultText;
   if (resultScore <= 8) {
     resultText = 'You are Awesome and Innocent!';
   } else if (resultScore <=12) {
     resultText = 'You are likeable!';
     } else if (resultScore <= 16) {
       resultText = 'You are ....Strange!';
     } else {
       resultText = 'You are ....Bad!';
     }
     return resultText;
 } 

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),TextButton(child: Text('Reset Quiz!'), onPressed: () => resetHandler())
      ],
    ));
  }
}