import 'package:flutter/material.dart';

const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const primaryColor = Color(0xFF0A0E21);
const scaffoldBackgroundColor =  Color(0xFF262d4a);

ThemeData theme(BuildContext context) {
  return ThemeData.dark().copyWith(
    sliderTheme: SliderThemeData(thumbColor: Colors.pink,
    activeTrackColor: Colors.pink),
      primaryColor: Color(0xFF1B2035),
      scaffoldBackgroundColor:scaffoldBackgroundColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Color(0xFF262d4a),
          textTheme: TextTheme().apply(displayColor: Colors.white)),
      textTheme: TextTheme().apply(
        displayColor: Colors.white,
      ),
      cardTheme: CardTheme(
          color: kActiveCardColour,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))));
}



const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
