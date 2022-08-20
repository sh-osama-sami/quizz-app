import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<question> fetchQuestion() async {
  final response =
      await http.get(Uri.parse('https://the-trivia-api.com/api/questions'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return question.fromJson(jsonDecode(response.body)[0]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load question');
  }
}

class question {
  String category;
  String questiontxt;
  String correctAnswer;
  List<dynamic> incorrectAnswers;
  //// String incorrectAnswer2;
  //String incorrectAnswer3;

  question({
    required this.category,
    required this.correctAnswer,
    required this.incorrectAnswers,
    //required this.incorrectAnswer2,
    //required this.incorrectAnswer3,
    required this.questiontxt,
  });
  Future<http.Response> fetchQuestion() {
    return http.get(Uri.parse('https://the-trivia-api.com/api/questions'));
  }

  factory question.fromJson(Map<String, dynamic> json) {
    return question(
      category: json['category'],
      correctAnswer: json['correctAnswer'],
      incorrectAnswers: json['incorrectAnswers'],
      // incorrectAnswer2: json['incorrectAnswers'[1]],
      // incorrectAnswer3: json['incorrectAnswers'[2]],
      questiontxt: json['question'],
    );
  }
}
