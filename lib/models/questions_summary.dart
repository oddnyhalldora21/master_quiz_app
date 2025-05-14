import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                final isCorrect = data['user_answer'] == data['correct_answer'];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              isCorrect
                                  ? const Color.fromARGB(255, 254, 124, 168)
                                  : const Color.fromARGB(255, 69, 136, 106),
                        ),
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      // Question and answers
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['question'] as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 247, 247, 247),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Your answer: ${data['user_answer']}',
                              style: const TextStyle(
                                color: Color.fromARGB(255, 244, 207, 220),
                              ),
                            ),
                            Text(
                              'Correct answer: ${data['correct_answer']}',
                              style: const TextStyle(
                                color: Color.fromARGB(255, 247, 247, 247),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
