import 'package:flutter/material.dart';

import 'ButtonCalculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator flutter"),
      ),
      body: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                ButtonCalculator()
              ],
            ),
          ],
        )
      ),
    );
  }
}


