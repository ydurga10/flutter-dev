import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 // const ({ Key? key }) : super(key: key);
 final Function selectHandler;
 final String answerText;

 Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.yellow,
      //textColors: Colors.green,
      child: ElevatedButton(
        //color: Colors.deepPurple,
        //textColors: Colors.green,
        child: Text(answerText),
        onPressed: () => selectHandler(),
            ),      
    );
  }
}