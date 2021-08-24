import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      debugShowCheckedModeBanner: false,
      title: "BMI",
      theme: ThemeData.dark().copyWith(
        primaryColor: Hexcolor('#0A0E21'),
        scaffoldBackgroundColor: Hexcolor('#0A0E21'),
      ),
    );
  }
}
