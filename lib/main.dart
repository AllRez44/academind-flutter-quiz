import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 40,
          ),
          const OutlinedButton(
              onPressed: null,
              child: Text(
                'Start Quiz',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
