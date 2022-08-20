import 'package:code/components/level.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class levelsScreen extends StatefulWidget {
  const levelsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return levelsState();
  }
}

class levelsState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 186, 62),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [level('1'), level('2')],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                level('3'),
                level('4'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                level('5'),
                level('6'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                level('7'),
                level('8'),
              ],
            )
          ],
        ));
  }
}
