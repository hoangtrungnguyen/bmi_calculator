import 'package:bmicalculator/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatefulWidget {
  final String title;
  final IconData icon;

  GenderWidget(this.title, this.icon);

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Icon(widget.icon,size: 80,),
      SizedBox(height: 10,),
      Text("${widget.title}",style: kLabelTextStyle,)]));
  }
}
