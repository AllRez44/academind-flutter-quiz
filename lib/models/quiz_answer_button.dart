import 'package:flutter/material.dart';

class QuizAnswerButton extends StatelessWidget {
  QuizAnswerButton(this.text, {this.isCorrect = false, this.onSelectAnswer, super.key});

  final String text;
  final bool isCorrect;
  void Function()? onSelectAnswer;
  void Function()? setOnSelectAnswer(void Function() function) {
    onSelectAnswer = function;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 24, 0, 80),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
      onPressed: onSelectAnswer,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
