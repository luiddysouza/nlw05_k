import 'package:flutter/material.dart';
import 'package:nlw05_k/challenge/challenge_page.dart';
import 'package:nlw05_k/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: ChallengePage(),
    );
  }
}
