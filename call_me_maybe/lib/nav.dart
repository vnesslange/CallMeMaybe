import 'package:call_me_maybe/screens/businesscard.dart';
import 'package:call_me_maybe/screens/resume.dart';
import 'package:call_me_maybe/screens/predictor.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

const tabs = [
  Tab(icon: Icon(Icons.person)),
  Tab(icon: Icon(Icons.work)),
  Tab(icon: Icon(Icons.star)),
];

final screens = [
  const BusinessCard(),
  const Resume(),
  const Predictor(),
];

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 238, 239, 229),
          appBar: AppBar(
            backgroundColor: const Color(0xFF2A092F),
            title: Text(
              'Call Me Maybe?',
              style: TextStyle(
                letterSpacing: 8,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = const Color(0xFFDBDE7D),
                fontSize: 35,
              ),
            ),
            bottom: const TabBar(tabs: tabs),
          ),
          body: TabBarView(children: screens),
        ));
  }
}
