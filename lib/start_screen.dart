import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            '/Users/oddnyhalldora/Desktop/quiz_app/assets/quiz-logo.png',
            color: const Color.fromARGB(204, 225, 77, 126),
            width: 300,
          ),
          const SizedBox(height: 100),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(202, 225, 77, 126),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz!'),
          ),
        ],
      ),
    );
  }
}
