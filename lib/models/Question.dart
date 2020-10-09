import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
      title: "Любимая еда:",
      answers: [
        {'answer' : 'Манты', 'isCorrect' : 1},
        {'answer' : 'Плов',},
        {'answer' : 'Лагман',},
        {'answer' : 'Гречка',},
      ]
    ),
    Question(title: "Любимый вид спорта:",
        answers: [
          {'answer' : 'Футбол',},
          {'answer' : 'Баскетбол',},
          {'answer' : 'Таеквондо','isCorrect' : 1},
          {'answer' : 'Валейбол',},
        ]),
    Question(title: "Любимая актриса:",
        answers: [
          {'answer' : 'Дессика Мэй',},
          {'answer' : 'Ким Со Ын','isCorrect' : 1},
          {'answer' : 'Кристалл Джон',},
          {'answer' : 'Пак Шин Хе',},
        ]),
    Question(title: "Любимый актер:",
        answers: [
          {'answer' : 'Ли Чон Сок','isCorrect' : 1},
          {'answer' : 'Ли Мин Хо',},
          {'answer' : 'Сон Джэ Рим',},
          {'answer' : 'Ким У Бин',},
        ]),
    Question(title: "Какая мечта:",
      answers: [
      {'answer' : 'Стать Президентом',},
      {'answer' : 'Стать Министром',},
      {'answer' : 'Стать Космонавтом',},
      {'answer' : 'Путешествовать','isCorrect' : 1},
      ]
    ),
  ];

  List<Question> get questions => [..._data];
}