import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/question_quiz_model.dart';
import '../providers/question_quiz_provider.dart';

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
           ...[
              for (var option in questionQuiz.options!)
                ListTile(
                  title: Text(option.label),
                  leading: Radio(
                    value: option.value,
                    groupValue: questionQuiz.selectedAnswer,
                    onChanged: (value) {
                      Provider.of<QuestionQuizProvider>(context, listen: false)
                          .answerSelected(questionQuiz.id, value);
                      Provider.of<QuestionQuizProvider>(context, listen: false)
                          .hideResult(questionQuiz.id);
                    },
                  ),
                  trailing: (option.value == questionQuiz.selectedAnswer) & (questionQuiz.showResult == true)
                      ? questionQuiz.result == true
                      ? const Icon(Icons.check, color: Colors.green)
                      : const Icon(Icons.close, color: Colors.red)
                      : null,
                ),
            ],
          ],

        ),

      ),
    );
  }
}
