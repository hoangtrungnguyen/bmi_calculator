import 'package:flutter/material.dart';

class BMIButton extends StatelessWidget {
  final Function onTap;
  final String title;
  const BMIButton({Key key, this.onTap,this. title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        width: double.infinity,
        child: Center(
            child: Text(
              "$title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
        color: Colors.pink,
      ),
    );
  }
}
