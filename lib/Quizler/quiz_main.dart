import 'package:flutter_practice_lab/Quizler/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              scoreKeeper = [];
              quizBrain.resetQuestionIndex();
            });
          },
          child: Icon(Icons.restore, color: Colors.redAccent),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        SizedBox(
          height: 15,
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }

  void checkAnswer(bool ans) {
    if (quizBrain.isFinished() == true) {
      Alert(context: context, title: 'Finished !', desc: 'End of the Quiz..')
          .show();

      quizBrain.resetQuestionIndex();
      scoreKeeper = [];
    }
    if (quizBrain.getAnswer() == ans) {
      setState(() {
        scoreKeeper.add(
          Icon(Icons.check, color: Colors.green),
        );
        quizBrain.nextQuestion(context);
      });
    } else {
      setState(() {
        scoreKeeper.add(
          Icon(Icons.close, color: Colors.red),
        );
        quizBrain.nextQuestion(context);
      });
    }
  }
}
