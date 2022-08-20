import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../quistions.dart';

class answerbutton extends StatefulWidget {
  String ansTxt;
  answerbutton(this.ansTxt);
  @override
  State<StatefulWidget> createState() {
    return answerState(ansTxt);
  }
}

class answerState extends State {
  String ansTxt;
  answerState(this.ansTxt);
  late Future<question> futureQuestion;
  @override
  void initState() {
    super.initState();
    futureQuestion = fetchQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Text(ansTxt,
        style: const TextStyle(
            fontSize: 30, color: Colors.white, fontFamily: 'Rubik Dirt'));
  }
}
