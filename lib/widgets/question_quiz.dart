import 'package:flutter/material.dart';
import '../models/question_quiz_model.dart';

class QuestionQuizWidget extends StatelessWidget {
  final QuestionQuizModel questionQuiz;

  const QuestionQuizWidget({super.key, required this.questionQuiz});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              questionQuiz.question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            if (questionQuiz.type == QuestionType.multipleChoice) ...[
              for (var option in questionQuiz.options!)
                ListTile(
                  title: Text(option),
                  leading: Radio(
                    value: option,
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
            ] else if (questionQuiz.type == QuestionType.trueFalse) ...[
              ListTile(
                title: const Text('True'),
                leading: Radio(
                  value: true,
                  groupValue: null,
                  onChanged: (value) {},
                ),
              ),
              ListTile(
                title: const Text('False'),
                leading: Radio(
                  value: false,
                  groupValue: null,
                  onChanged: (value) {},
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
