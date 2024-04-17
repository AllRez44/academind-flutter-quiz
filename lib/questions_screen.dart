import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/models/quiz_question.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen(this.selectedAnswers, this.finishQuiz, {super.key});

  List<String> selectedAnswers = [];
  void Function() finishQuiz;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  bool hasFinished = false;

  void selectAnswer(String selectedAnswer) {
    widget.selectedAnswers.add(selectedAnswer);
    setState(() {
      if (questions.elementAtOrNull(currentQuestionIndex + 1) != null) {
        currentQuestionIndex++;
      } else if (questions.length == currentQuestionIndex + 1) {
        hasFinished = true;
        widget.finishQuiz();
      } else {
        // 'Something went wrong on Answer Button'
        throw Error();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion = questions[currentQuestionIndex];
    for (var answer in currentQuestion.answers) {
      answer.setOnSelectAnswer(
        () => selectAnswer(answer.text),
      );
    }
    // Suffles the current answers list
    currentQuestion.answers.shuffle();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: currentQuestion,
      ),
    );
  }
}
