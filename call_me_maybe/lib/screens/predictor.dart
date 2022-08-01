import 'package:flutter/material.dart';
import 'package:call_me_maybe/models/answers.dart';

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  State createState() => PredictorState();
}

class PredictorState extends State<Predictor> {
  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Call Me Maybe?',
          style: TextStyle(
            fontSize: 48,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = const Color(0xFF753DA9),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  indexNum = callMe.randomAnswer();
                });
              },
              child: const Text(
                'Ask a question...\ntap for answer.',
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 162, 136, 186),
                ),
              ),
            )),
        Text(
          ' ${callMe.questionAnswers[indexNum]}',
          style: const TextStyle(
            fontSize: 28,
            color: Color.fromARGB(255, 127, 21, 226),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
