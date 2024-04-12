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
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Question 1'),
        SizedBox(height: 60),
        Alternative('Alternative 1'),
        Alternative('Alternative 2'),
        Alternative('Alternative 3'),
        Alternative('Alternative 4'),
      ],
    );
  }
}

class Alternative extends StatelessWidget {
  const Alternative(this.text,{super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(40)),
        onPressed: null,
        child: Text(text),
    );
  }
}