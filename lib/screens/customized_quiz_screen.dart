import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/question_quiz_provider.dart';
import '../widgets/question_quiz.dart';

class CustomizedQuizScreen extends StatelessWidget {
  const CustomizedQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customized Quiz'),
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
          print('test');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}