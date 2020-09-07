import 'package:bmicalculator/brain/brain.dart';
import 'package:bmicalculator/style/theme.dart';
import 'package:bmicalculator/view/component/bmi_button.dart';
import 'package:bmicalculator/view/component/bmi_value_widget.dart';
import 'package:bmicalculator/view/component/gender_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  double height = 60;
  double weight = 40;
  int age = 25;
  CalculatorBrain brain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: GenderWidget("Male", FontAwesomeIcons.mars)),
                        Expanded(
                            child:
                                GenderWidget("Female", FontAwesomeIcons.venus)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Card(
                      child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Height",style: kLabelTextStyle,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${height.round()}",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("cm")
                                ],
                              ),
                              Slider(
                                value: height,
                                onChanged: (value) {
                                  setState(() {
                                    this.height = value;
                                  });
                                },
                                max: 230,
                                min: 50,
                              )
                            ]),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: BmiValueWidget(
                                title: "Weight",
                                value: weight.round(),
                                minus: () {
                                  setState(() {
                                    weight -= 1;
                                  });
                                },
                                adding: () {
                                  setState(() {
                                    weight +=1 ;
                                  });
                                })),
                        Expanded(
                            child: BmiValueWidget(
                          title: "Age",
                          value: age.round(),
                          minus: () {
                            setState(() {
                              age -= 1;
                            });
                          },
                          adding: () {
                            setState(() {
                              age += 1;
                            });
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BMIButton(title: "CALCULATE",onTap: (){
              brain =  CalculatorBrain(height: this.height.round(),weight: this.weight.round());

              Navigator.pushNamed(context, "/result",arguments: brain);
            },),
          )
        ],
      ),
    );
  }
}
