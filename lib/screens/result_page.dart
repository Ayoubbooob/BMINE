import 'package:bmi_calculator/components/my_card.dart';
import 'package:bmi_calculator/components/reused_bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmi,
      required this.resultMsg,
      required this.level});

  // final Person person;
  final String level;
  final String bmi;
  final String resultMsg;
  // final Person _person;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHieght = size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleStyle, //Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: MyCard(
                padding: const EdgeInsets.all(15.0),
                gender: Gender.none,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      level,
                      style: kResult,
                    ),
                    Text(
                      bmi,
                      style: kBMIText,
                    ),
                    const Text(
                      'Normal BMI range:\n18.5 - 25 kg/m2',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      resultMsg,
                      style: kRangeMsg,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusedBottomButton(
                screenHieght: screenHieght,
                buttonText: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
