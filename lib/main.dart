import 'package:bmicalculator/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
