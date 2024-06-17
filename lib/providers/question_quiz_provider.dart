import 'package:flutter/material.dart';
import '../models/question_quiz_model.dart';

class QuestionQuizProvider with ChangeNotifier {
  final List<QuestionQuizModel> _questions = [];

  List<QuestionQuizModel> get questions => _questions;

  void addQuestion(QuestionQuizModel question) {
    _questions.add(question);
    notifyListeners();
  }

  void removeQuestion(int index) {
    _questions.removeAt(index);
    notifyListeners();
  }
}