import 'package:flutter/material.dart';

class calculatorButton extends StatelessWidget {
  String text;
  void Function(String) onClicked;

  calculatorButton({super.key, required this.text, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: () {
            onClicked(text);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: const RoundedRectangleBorder(),
              foregroundColor: Colors.white),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
