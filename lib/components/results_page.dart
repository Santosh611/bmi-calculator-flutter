import 'package:bmi_calculator/screens/constants.dart';
import 'package:flutter/material.dart';
import 'Reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Results',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
    );
  }
}
