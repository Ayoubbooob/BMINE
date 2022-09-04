import 'package:flutter/material.dart';

class ReusedFloatingButton extends StatelessWidget {
  const ReusedFloatingButton(
      {super.key,
      required this.iconData,
      required this.onPressed,
      required this.heroTag});

  final IconData iconData;
  final Function() onPressed;
  final Object? heroTag;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      elevation: 16.0,
      // mini: true,
      onPressed: onPressed,
      backgroundColor: const Color.fromARGB(255, 60, 64, 83),
      child: Icon(
        iconData,
        color: Colors.white60,
        size: 30,
      ),
    );
  }
}
