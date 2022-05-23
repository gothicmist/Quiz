import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBox = [
    Question("A hologram shows two dimensions.", false),
    Question("The World Wide Web was invented in 1960.", false),
    Question("The mass of a cube is measured by density and volume.", true),
    Question("The farthest star known to us died 13 billion years ago.", true),
    Question(
        "The two countries with the most large scientific telescopes are the United States and Chile.",
        true),
    Question("Solar radiation is evenly distributed around the Earth.", false),
    Question("Comets are made of superheated, molten rock.", false),
    Question("A planimeter is used to measure height", false),
    Question("The atmosphere of Uranus is made primarily of oxygen.", false),
    Question(" The first scientist on the Moon was a physician.", false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBox.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBox[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBox[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBox.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
