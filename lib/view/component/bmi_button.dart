import 'package:bmicalculator/configure.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMIButton extends StatefulWidget {
  Function onPressed;
  IconData iconData;

  Color color;

  @override
  _BMIButtonState createState() => _BMIButtonState();

  BMIButton({this.onPressed, @required this.iconData, this.color});
}

class _BMIButtonState extends State<BMIButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: 250,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: RaisedButton(
          color: widget.color ?? kActiveCardColour,
          elevation: 8,
          onPressed: widget.onPressed,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(widget.iconData, size: 80),
            SizedBox(height: 10),
            Text("Male")
          ]),
        ),
      ),
    ));
  }
}
