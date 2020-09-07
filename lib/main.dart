import 'package:bmicalculator/style/theme.dart';
import 'package:bmicalculator/view/landing_page.dart';
import 'package:bmicalculator/view/result_page.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (_)=>LandingPage(),
        '/result': (_)=>ResultPage()
      },
      initialRoute: '/',
      theme: theme(context),
    );
  }
}

