import 'package:bmicalculator/view/landing_page.dart';
import 'package:flutter/material.dart';

import 'configure.dart';

void main() {
  runApp(BMIApp());
}

class BMIApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(context),
      home: LandingPage(),
    );
  }
}

