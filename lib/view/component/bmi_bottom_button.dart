import 'package:bmicalculator/configure.dart';
import 'package:flutter/material.dart';

class BMIBottomBtn extends StatelessWidget {
  Function onTap;
  String label;

  BMIBottomBtn({this.onTap,this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.pink,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        ),
        height: 80,
        child: Center(child: Text(label ?? "Calculate",style: kLargeButtonTextStyle,)),
      ),
    );
  }
}
