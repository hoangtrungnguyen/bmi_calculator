import 'package:bmicalculator/brain/calculator_brain.dart';
import 'package:bmicalculator/configure.dart';
import 'package:bmicalculator/view/component/bmi_bottom_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  CalculatorBrain brain;

  ResultPage(this.brain);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kInactiveCardColour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            Text(
              "Your Result",
              style: kTitleTextStyle,
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  Text("${brain.getResult()}",style: kResultTextStyle,),
                  Text("${brain.calculateBMI()}",style: kBMITextStyle,),
                  Text('${brain.getInterpretation()}',textAlign: TextAlign.center,style: kBodyTextStyle,),
                ]),
              ),
            ),
            BMIBottomBtn(onTap: (){
              Navigator.of(context).pop();
            },label: "Re-Calculate",)
          ],
        ),
      ),
    );
  }
}
