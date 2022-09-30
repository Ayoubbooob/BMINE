import 'package:bmi_calculator/screens/bmi_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BmiCalculatorApp());

class BmiCalculatorApp extends StatelessWidget {
  const BmiCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF090C22),
          scaffoldBackgroundColor: const Color(0xFF101427),
          appBarTheme: const AppBarTheme(
            color: Color(0xFF090C22),
          ),
          // textTheme: const TextTheme(
          //   headline1: TextStyle(fontSize: 76.0, fontWeight: FontWeight.bold),
          //   headline3: TextStyle(fontSize: 76.0, fontWeight: FontWeight.bold),
          // )
          textTheme: const TextTheme(
              headline3: TextStyle(fontWeight: FontWeight.bold, fontSize: 40))),
      // home: const BmiWidget(),
      initialRoute: '/',
      routes: {
        '/': (context) => const BmiWidget(),
        // '/result': (context) => const ResultPage()
      },
    );
  }
}
