import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 300,
            child: Text(
              'What are the main building blocks of Flutter UIs?',
              style: TextStyle(
                color: Color.fromARGB(150, 237, 223, 252),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          Alternative('Functions'),
          Alternative('Components'),
          Alternative('Blocks'),
          Alternative('Widgets'),
        ],
      ),
    );
  }
}

class Alternative extends StatelessWidget {
  const Alternative(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 24, 0, 80),
          fixedSize: const Size.fromWidth(300),
          padding: const EdgeInsets.symmetric(horizontal: 50)),
      onPressed: null,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
