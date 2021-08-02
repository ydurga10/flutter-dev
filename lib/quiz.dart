import 'package:flutter/material.dart';
import './main.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(this.questions, this.answerQuestion, this.questionIndex, );

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            //Text('The Question!'),
            //Text(questions.elementAt(1)),
            //Text(questions[_questionIndex]),
            Question(questions[questionIndex]['questionText'].toString(),),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer){ return Answer(answerQuestion, answer);}).toList()
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
          ],
        );
  }
}