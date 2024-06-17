class QuestionQuizModel {
  final String question;
  final List<String>? options;
  final bool? answer;
  final String type;

  QuestionQuizModel({
    required this.question,
    this.options,
    this.answer,
    required this.type,
  });
}
