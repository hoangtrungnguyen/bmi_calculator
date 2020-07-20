import 'package:bmicalculator/brain/calculator_brain.dart';
import 'package:bmicalculator/configure.dart';
import 'package:bmicalculator/view/component/bmi_bottom_button.dart';
import 'package:bmicalculator/view/component/bmi_button.dart';
import 'package:bmicalculator/view/component/bmi_heigh_weight.dart';
import 'package:bmicalculator/view/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  double height = 80;
  double minHeight = 50;
  double maxHeight = 250;
  bool isMale = false;
  double weight = 40;
  double age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        elevation: 16,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                BMIButton(
                  color:!isMale ? kActiveCardColour : kInactiveCardColour,
                    onPressed:  (){
                  setState(() {
                    isMale = !isMale;
                  });
                }, iconData: FontAwesomeIcons.venus),
                BMIButton(
                  color: isMale ? kActiveCardColour : kInactiveCardColour,
                    onPressed: () {
                  setState(() {
                    isMale = !isMale;
                  });
                  }, iconData: FontAwesomeIcons.mars)
              ],
            ),
          ),
          Expanded(
              child: Card(
          elevation: 8,
                margin: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Height",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          "${this.height.round()}",
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    Slider(
                        min: minHeight,
                        max: maxHeight,
                        value: height,
                        onChanged: (value) {
                          setState(() {
                            this.height = value;
                          });
                        })
                  ],
                ),
              )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:  BMIWeightAndHeightCard(label: "Weight", value: weight.round(),add: (){
                    setState(() {
                      weight += 1;
                    });
                  },minus: (){
                    setState(() {
                      weight -= 1;
                    });
                  },),
                ),
                Expanded(
                    child: BMIWeightAndHeightCard(label: "Age", value: age.round(),add: (){
                      setState(() {
                        age += 1;
                      });
                    },minus: (){
                      setState(() {
                        age -= 1;
                      });

                    },)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BMIBottomBtn(onTap: (){
            CalculatorBrain brain = CalculatorBrain(height: height.round(),weight: weight.round());
            Navigator.of(context).push(CupertinoPageRoute(builder: (_){
              return ResultPage(brain);
            }));
          },)
        ],
      ),
    );
  }
}
