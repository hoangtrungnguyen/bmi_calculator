import 'package:bmicalculator/configure.dart';
import 'package:bmicalculator/view/component/bmi_plus_button.dart';
import 'package:flutter/material.dart';

class BMIWeightAndHeightCard extends StatelessWidget {
  Function add;
  Function minus;
  String label;
  int value;
  BMIWeightAndHeightCard({@required this.label,@required this.value, this.add,this.minus});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Text(
              '${label}',
              style: kLabelTextStyle,
            ),
            Text(
              '$value',
              style: kTitleTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BMIPlusButton(Icons.add,onPressed: add,),
                BMIPlusButton(Icons.remove,onPressed: minus,),
              ],
            ),
            SizedBox(height: 30,)
          ],
        ));
  }
}
