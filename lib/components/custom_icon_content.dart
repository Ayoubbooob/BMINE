import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomIconContent extends StatelessWidget {
  const CustomIconContent(
      {Key? key, required this.iconData, required this.contentText})
      : super(key: key);

  final IconData iconData;
  final String contentText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Icon(
              iconData,
              size: 75.0,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Expanded(
            child: Text(
              contentText,
              style:
                  kLabelTextStyle, //const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
