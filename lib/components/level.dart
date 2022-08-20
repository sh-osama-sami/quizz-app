import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/levelscreen.dart';

class level extends StatefulWidget {
  String stage;
  level(this.stage);
  @override
  State<StatefulWidget> createState() {
    return levelState(stage);
  }
}

class levelState extends State {
  String stage;
  levelState(this.stage);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return levelscreen();
          }));
        },
        child: Column(
          children: [
            const Icon(
              Icons.waves,
              size: 150,
              color: Color.fromARGB(255, 70, 238, 221),
            ),
            Text(
              stage,
              style: const TextStyle(
                  fontSize: 30, color: Colors.white, fontFamily: 'Rubik Dirt'),
            )
          ],
        ));
  }
}
