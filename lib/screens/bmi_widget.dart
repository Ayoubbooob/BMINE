import 'package:flutter/material.dart';
import 'home.dart';

class BmiWidget extends StatefulWidget {
  const BmiWidget({super.key});

  @override
  State<BmiWidget> createState() => _BmiWidgetState();
}

class _BmiWidgetState extends State<BmiWidget> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // var screenHieght = size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: const HomeScreen(),
      // bottomNavigationBar: Material(
      //   color: const Color(0xFFEA1556),
      //   child: InkWell(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => ResultPage(p),
      //         ),
      //       );
      //     },
      //     child: SizedBox(
      //       height: screenHieght * 0.09,
      //       width: double.infinity,
      //       child: Center(
      //         child: Text(
      //           'CALCULATE YOUR BMI',
      //           style: Theme.of(context).textTheme.bodyLarge,
      //           textAlign: TextAlign.center,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
