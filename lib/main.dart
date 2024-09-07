import 'package:calculator/calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const calculatorApp());
}
class calculatorApp extends StatelessWidget {
  const calculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        calculatorScreen.routeName: (_) => const calculatorScreen(),
      },
      initialRoute: calculatorScreen.routeName,
    );
  }
}
