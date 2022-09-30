// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard(
      {Key? key,
      required this.cardChild,
      this.cardHeight,
      this.gender,
      this.genderSelected,
      this.onTap,
      this.padding})
      : super(key: key);

  final Widget cardChild;
  final double? cardHeight;
  final Gender? gender;
  final Gender? genderSelected;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry? padding;
  // final double width;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: widget.cardHeight,
      child: InkWell(
        onTap: widget.onTap,
        child: Opacity(
          opacity: 1,
          child: Card(
            color: widget.gender == widget.genderSelected
                ? const Color.fromARGB(255, 30, 41, 119)
                : const Color(0xFF1D1F33),
            elevation: 5.0,
            child: widget.cardChild,
          ),
        ),
      ),
    );
  }
}
