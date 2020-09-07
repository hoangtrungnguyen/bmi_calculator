import 'package:bmicalculator/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiValueWidget extends StatefulWidget {
  final String title;
  final int value;
  final Function adding;
  final Function minus;

  BmiValueWidget({this.title, this.value, this.minus, this.adding});

  @override
  _BmiValueWidgetState createState() => _BmiValueWidgetState();
}

class _BmiValueWidgetState extends State<BmiValueWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${widget.title}".toUpperCase(),style: kLabelTextStyle,),
          SizedBox(height: 10,),
          Text("${widget.value}",style: kNumberTextStyle,),
          Theme(
            data: Theme.of(context).copyWith(
              cardTheme: CardTheme(
                elevation: 8,
                  color: Colors.grey, shape:CircleBorder(side: BorderSide(width: 0)) )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(child: IconButton(icon:Icon(Icons.remove), onPressed: widget.minus,)),
                Card(
                    child: IconButton(icon:Icon(Icons.add), onPressed: widget.adding,)),
              ],
            ),
          )
        ]));
  }
}
