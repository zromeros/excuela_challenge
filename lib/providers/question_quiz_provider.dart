import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/question_quiz_model.dart';
class QuestionQuizProvider with ChangeNotifier {
  final List<QuestionQuizModel> _questions = [
    QuestionQuizModel(
      id: const Uuid().v4(),
      question: '¿El sol es una estrella?',
      options: [
        OptionQuiz(
            label: 'Verdadero',
            value: true
        ),
        OptionQuiz(
            label: 'Falso',
            value: false
        )],
      answer: true,
      showResult: false
    ),
    QuestionQuizModel(
      id: const Uuid().v4(),
      question: '¿Cuál es la capital de Francia?',
      options: [
        OptionQuiz(
            label: 'París',
            value: 'paris'
        ),
        OptionQuiz(
            label: 'Roma',
            value: 'rome'
        ),
        OptionQuiz(
            label: 'Madrid',
            value: 'madrid'
        ),
        OptionQuiz(
            label: 'Berlín',
            value: 'berlin'
        ),
      ],
        answer: 'paris',
        showResult: false

    ),
  ];

  List<QuestionQuizModel> get questions => _questions;

  void addQuestion(QuestionQuizModel question) {
    _questions.add(question);
    notifyListeners();
  }

  void removeQuestion(String id) {
    _questions.removeWhere((q) => q.id == id);
    notifyListeners();
  }

  void answerSelected(String id, dynamic answer){

    int  index = _questions.indexWhere((q) => q.id == id);
    questions[index].selectedAnswer = answer;
    notifyListeners();
  }

  void checkAnswers(){
    for (QuestionQuizModel q in _questions){
        q.showResult = true;
        bool checkAnswer = q.selectedAnswer == q.answer;
        q.result = checkAnswer;
    }
    notifyListeners();
  }
  void hideResult(String id){
    int  index = _questions.indexWhere((q) => q.id == id);
    questions[index].showResult = false;

    notifyListeners();
  }
}
