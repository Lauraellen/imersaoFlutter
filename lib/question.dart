class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer);

  // static é quando executamos a função direto da classe e não de um objeto
  // é uma lista de questões (classe que criamos)
  // demos o nome à função de getQuestionList
  static List<Question> getQuestionsList() {
    //criamos uma variavel do tipo List<Question> e definimos que é uma lista vazia
    List<Question> questions = [];

    questions.add(Question(
      'O que é Flutter?',
      'Um novo smartphone.',
      'Um serviço do Google.',
      'Um SDK de desenvolvimento multiplataforma.',
      'Um linguagem de programação.',
      3,
    ));

    return questions;
  }
}
