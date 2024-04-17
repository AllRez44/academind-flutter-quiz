import 'package:flutter/cupertino.dart';
import 'package:flutter_quiz/models/quiz_answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizQuestion extends StatelessWidget {
  const QuizQuestion(this.text, this.answers, {super.key});

  final String text;
  final List<QuizAnswerButton> answers;
  List<QuizAnswerButton> get suffledAnswers {
    List<QuizAnswerButton> shuffledAnswers = List.from(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            text,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 201, 153, 251),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ...answers,
        ],
      ),
    );
  }
}
