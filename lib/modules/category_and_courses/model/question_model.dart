class QuestionModel {
  int num;
  String question;
  int marks;
  QuestionModel(
      {required this.marks, required this.num, required this.question});
}

class Answer {
  int id;
  String answer;
  Answer({
    required this.answer,
    required this.id,
  });
}
