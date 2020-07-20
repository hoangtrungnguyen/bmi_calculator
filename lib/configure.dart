import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

ThemeData theme(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: Color(0xFF1B2035),
      scaffoldBackgroundColor: Color(0xFF262d4a),
      cardColor: kActiveCardColour,
      buttonTheme: ThemeData.dark().buttonTheme.copyWith(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            disabledColor: kInactiveCardColour,
            buttonColor: kActiveCardColour,
          ),
      cardTheme: ThemeData.dark().cardTheme.copyWith(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      sliderTheme: Theme.of(context)
          .sliderTheme
          .copyWith(activeTrackColor: Colors.pink, thumbColor: Colors.pink));
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
