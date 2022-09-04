import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/cupertino.dart';

class ReusedBottomButton extends StatelessWidget {
  const ReusedBottomButton(
      {Key? key,
      required this.screenHieght,
      required this.onTap,
      required this.buttonText})
      : super(key: key);

  final double screenHieght;
  final Function() onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        height: screenHieght * 0.1,
        width: double.infinity,
        color: bottomButtonColor,
        child: Center(
          child: Text(
            buttonText,
            style: kButtonTextStyle, //Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
