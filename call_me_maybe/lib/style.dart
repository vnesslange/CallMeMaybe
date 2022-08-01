import 'package:flutter/material.dart';

class JobStyle extends StatelessWidget {
  const JobStyle(this.job, this.align, {Key? key}) : super(key: key);
  final String job;
  final Alignment align;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.00),
          alignment: align,
          child: Text(job,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              )),
        ));
  }
}

class JobStyle2 extends StatelessWidget {
  const JobStyle2(this.job, {Key? key}) : super(key: key);
  final String job;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.00),
      alignment: Alignment.centerLeft,
      child: Text(job,
          style: const TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic,
          )),
    );
  }
}

class JobName extends StatelessWidget {
  const JobName({Key? key}) : super(key: key);
  final String name =
      '   Vanessa Lange\n 123 Maple Street\n City, State 11111 ';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      alignment: Alignment.center,
      child: Text(
        name,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 7),
      ),
    );
  }
}
