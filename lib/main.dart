//import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
//import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp()); //runs the app
}

//void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(home: Text('Hello!'),);
//  }
//}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      var _questionIndex = 0;
    var _totalScore = 0;
    });
    
  }

  final List _questions = const [{'questionText': 'What\'s your favorite color', 'answers': [{'text': 'Green', 'score': 1}, {'text': 'Red', 'score': 5}, {'text': 'Yellow', 'score': 3}, {'text': 'White', 'score': 0}]},
    {'questionText': 'What\'s your favorite fruit', 'answers': [{'text': 'Grape', 'score': 5}, {'text':'Mango', 'score': 1}, {'text': 'Apple', 'score': 9}, {'text':'Melon', 'score': 4}]},
    {'questionText': 'What\'s your favorite country', 'answers': [{'text':'India', 'score': 1}, {'text': 'USA', 'score': 10}, {'text':'Germany', 'score': 5}, {'text': 'Singapore', 'score': 4}]}, ];

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //questionIndex = questionIndex + 1;
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No More Questions!');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ?
        Column(
          children: [
            //Text('The Question!'),
            //Text(questions.elementAt(1)),
            //Text(questions[_questionIndex]),
            Question(_questions[_questionIndex]['questionText'],),
            ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>).map((answer){ return Answer(() => _answerQuestion(answer['score'] as int
            ), answer['text'] as String);}).toList()
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
          ],
        ) : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}