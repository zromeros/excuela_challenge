class OptionQuiz {
  final String label;
  final dynamic value;

  OptionQuiz({required this.label, required this.value});
}

class QuestionQuizModel {
  final String id;
  final String question;
  final List<OptionQuiz>? options;
  final dynamic answer;
  dynamic selectedAnswer;
  bool? showResult;
  bool? result;

  QuestionQuizModel({
    required this.id,
    required this.question,
    this.options,
    this.answer,
    this.selectedAnswer,
    this.showResult,
    this.result
  });
}
