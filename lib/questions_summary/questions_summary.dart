import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary
              .map((data) => SummaryItem(data))
              .toList(),
        ),
      ),
    );
  }
}
