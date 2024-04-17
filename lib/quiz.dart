import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_screen.dart';
import 'package:flutter_quiz/result_screen.dart';
import 'package:flutter_quiz/start_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State {
  Widget? activeScreen;
  List<String> selectedAnswers = [];
  // bool hasStartedQuiz = false;

  @override
  void initState() {
    activeScreen = StartScreen(startQuiz);
    super.initState();
  }

  void startQuiz() {
    setState(() {
      activeScreen = QuestionsScreen(selectedAnswers, finishQuiz);
      // hasStartedQuiz = true;
    });
  }

  void finishQuiz() {
    setState(() {
      activeScreen = ResultScreen(selectedAnswers, restartQuiz);
    });
  }

  void restartQuiz() {
    selectedAnswers = [];
    setState(() {
      activeScreen = StartScreen(startQuiz);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          // child: !hasStartedQuiz ? StartScreen(startQuiz) : const QuestionsScreen() ,
        ),
      ),
    );
  }
}
