import 'package:bmicalculator/brain/brain.dart';
import 'package:bmicalculator/style/theme.dart';
import 'package:bmicalculator/view/component/bmi_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CalculatorBrain brain = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 20,
                left: 20,
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              top: 100,
              left: 20,
              right: 20,
              bottom: 120,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Result",style: kResultTextStyle,),
                    Text("${brain.calculateBMI()}",style: kBMITextStyle,),
                    Text("${brain.getInterpretation()}",style: kBodyTextStyle,textAlign: TextAlign.center
                      ,),
                  ],
                ),
              ),
            ),
            Positioned(bottom: 0,left: 0,right: 0,height: 100,
            child: BMIButton(
              title: "RE-CALCULATE",
              onTap: (){
                Navigator.of(context).pop();
            },),)
          ],
        ),
      ),
    );
  }
}
