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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
            'Widget 3: Quiz customizable',
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
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

        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(24.0),
          margin: const EdgeInsets.symmetric(vertical: 24.0),
          child: ElevatedButton(
            onPressed: () {
              Provider.of<QuestionQuizProvider>(context, listen: false).checkAnswers();
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Padding interno
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48.0),
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
                'Verificar',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
    );
  }
}