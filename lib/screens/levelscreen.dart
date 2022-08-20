import 'package:code/components/AnswerButton.dart';
import 'package:code/quistions.dart';
import 'package:flutter/material.dart';

class levelscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return levelscreenstate();
  }
}

class levelscreenstate extends State {
  late Future<question> futureQuestion;
  @override
  void initState() {
    super.initState();
    futureQuestion = fetchQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 186, 62),
      body: Center(
          child: FutureBuilder<question>(
        future: futureQuestion,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(snapshot.data!.category,
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Rubik Dirt')),
                Text(snapshot.data!.questiontxt,
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Rubik Dirt')),
                InkWell(
                    onTap: () => showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text('correct'),
                            );
                          },
                        ),
                    child: answerbutton(snapshot.data!.correctAnswer)),
                InkWell(
                    onTap: () => showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text('incorrect'),
                            );
                          },
                        ),
                    child: answerbutton(snapshot.data!.incorrectAnswers[0])),
                InkWell(
                    onTap: () => showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text('incorrect'),
                            );
                          },
                        ),
                    child: answerbutton(snapshot.data!.incorrectAnswers[1])),
                InkWell(
                    onTap: () => showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text('incorrect'),
                            );
                          },
                        ),
                    child: answerbutton(snapshot.data!.incorrectAnswers[2])),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      )),
    );
  }
}
