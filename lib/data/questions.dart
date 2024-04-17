import 'package:flutter_quiz/models/quiz_question.dart';
import 'package:flutter_quiz/models/quiz_answer_button.dart';

var questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      QuizAnswerButton('Widgets', isCorrect: true),
      QuizAnswerButton('Components'),
      QuizAnswerButton('Blocks'),
      QuizAnswerButton('Functions'),
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      QuizAnswerButton('By defining widgets in config files'),
      QuizAnswerButton('By combining widgets in code', isCorrect: true),
      QuizAnswerButton('By combining widgets in a visual editor'),
      QuizAnswerButton(
          'By using XCode for iOS and Android Studio for Android'),
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      QuizAnswerButton('Update data as UI changes'),
      QuizAnswerButton('Ignore data changes'),
      QuizAnswerButton('Update UI as data changes', isCorrect: true),
      QuizAnswerButton('Render UI that does not depend on data'),
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      QuizAnswerButton('StatelessWidget'),
      QuizAnswerButton('Update UI as data changes', isCorrect: true),
      QuizAnswerButton('StatefulWidget'),
      QuizAnswerButton('Both are equally good'),
      QuizAnswerButton('None of the above'),
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      QuizAnswerButton('The closest StatefulWidget is updated'),
      QuizAnswerButton('Any nested StatefulWidgets are updated'),
      QuizAnswerButton('The UI is updated'),
      QuizAnswerButton('The UI is not updated', isCorrect: true),
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      QuizAnswerButton('By calling setState()', isCorrect: true),
      QuizAnswerButton('By calling updateData()'),
      QuizAnswerButton('By calling updateUI()'),
      QuizAnswerButton('By calling updateState()'),
    ],
  ),
];
