import 'package:flutter/material.dart';

class BMIPlusButton extends StatelessWidget {
  IconData iconData;
  Function onPressed;

  BMIPlusButton(this.iconData,{this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: CircleBorder(),
      color: Colors.grey,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Icon(iconData,size: 50,),
    );
  }
}
