import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/question_quiz_model.dart';
import '../providers/question_quiz_provider.dart';
import '../widgets/question_quiz.dart';

class CustomizedQuizScreen extends StatelessWidget {
  const CustomizedQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final questionProvider =  Provider.of<QuestionQuizProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Widget 3: Quiz customizable'),
      ),
      body: Consumer<QuestionQuizProvider>(
        builder: (context, questionQuizProvider, child) {
          return ListView.builder(
            itemCount: questionQuizProvider.questions.length,
            itemBuilder: (context, index) {
              return QuestionQuizWidget(
                questionQuiz: questionQuizProvider.questions[index],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          questionProvider.addQuestion(
              QuestionQuizModel(
                  question: '¿El cielo es azul?',
                  options: ['Verdadero', 'falso'],
                  answer: true,
                  type: QuestionType.trueFalse)
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}