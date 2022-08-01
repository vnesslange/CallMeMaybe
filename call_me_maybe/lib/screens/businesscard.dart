// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  final phoneNumber = '555-555-5555';

  final website = 'github.com/vnesslange';

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
                  child: Center(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            // A fixed-height child.
                            height: 120.0,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            alignment: Alignment.center,
                            child: Image.asset('assets/IMG_3852.JPG'),
                          ),
                          Container(
                            // A fixed-height child.
                            margin: const EdgeInsets.symmetric(
                                horizontal: 80.0, vertical: 2.0),
                            alignment: Alignment.center,
                            child: const Text(
                              'Vanessa Lange',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 61, 6, 63)),
                            ),
                          ),
                          Container(
                            // Another fixed-height child.
                            margin: const EdgeInsets.symmetric(
                                horizontal: 80.0, vertical: 3.0),
                            alignment: Alignment.center,
                            child: const Text('Software Developer',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 196, 141, 198))),
                          ),
                          Container(
                            // Another fixed-height child.
                            margin: const EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 3.0),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  launchUrlString('sms:$phoneNumber');
                                });
                              },
                              child: Text(
                                phoneNumber,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 61, 25, 62),
                                    letterSpacing: 5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Row(mainAxisSize: MainAxisSize.min, children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.00),
                                alignment: Alignment.center,
                                child: Text(
                                  'vanessa@email.com',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 61, 25, 62),
                                      letterSpacing: .5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.00),
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      launchUrlString('https:$website');
                                    });
                                  },
                                  child: Text(
                                    website,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 61, 25, 62),
                                        letterSpacing: .5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ]),
                  )));
        },
      ),
    );
  }
}
