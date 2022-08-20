import 'package:flutter/material.dart';

import 'screens/homescreen.dart';
import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State {
  @override
  Widget build(BuildContext context) {
    return const homeScreen();
  }
}
