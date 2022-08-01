import 'package:flutter/material.dart';
import 'nav.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(
        backgroundColor: Colors.amber,
        fontFamily: 'Handlee',
      ),
      home: NavBar(),
    );
  }
}
