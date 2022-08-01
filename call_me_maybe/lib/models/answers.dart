import 'dart:math';

class Answers {
  final Random random = Random();
  final List questionAnswers;

  Answers(this.questionAnswers);

  int randomAnswer() {
    int value = random.nextInt(questionAnswers.length);
    return value;
  }
}

const theAnswers = [
  'Never, in a million years.',
  'I will call tomorrow!',
  'Yes! of course.',
  'hmmmmm.....I guess. ',
  'Probably, maybe,',
  'Probably, Yes!',
  'Probably Not...',
  'Most likely next week!',
];

var callMe = Answers(theAnswers);
