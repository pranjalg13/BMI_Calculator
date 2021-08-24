import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String upper;
  final String middle;
  final String bottom;
  ResultPage(
      {@required this.upper, @required this.bottom, @required this.middle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kYourResultTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableContainer(
                decorationcolor: KInactiveColor,
                iconWiget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      upper.toUpperCase(),
                      style: kResultPageTitle,
                    ),
                    Text(
                      middle,
                      style: kBMITextStyle,
                    ),
                    Text(
                      bottom,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              title: 'RECALCULATE',
              onpress: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
