import 'package:call_me_maybe/style.dart';
import 'package:flutter/material.dart';
import 'package:call_me_maybe/models/jobs.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2!,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const JobName(),
              Job(firstJob),
              Job(secondJob),
              Job(thirdJob),
              Job(fourthJob),
              Job(fifthJob),
            ]),
          ),
        );
      }),
    );
  }
}
