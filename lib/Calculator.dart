
import 'package:flutter/material.dart';
import 'ButtonCalculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int firstNum;
  late int secondNum;
  late String textToDisplay = "";
  late String result = "";
  late String calculation = "";
  void onClickButton(String btnVal) {
    if (btnVal != '+' && btnVal != '-' && btnVal != '*' && btnVal != '/' && btnVal != '=' && btnVal != 'CLR' && btnVal != 'DEL') {
      textToDisplay += btnVal;
    } else if (btnVal == 'CLR') {
      firstNum = 0;
      secondNum = 0;
      textToDisplay = '';
      result = '';
    } else if (btnVal == 'DEL'){
      textToDisplay = textToDisplay.substring(0,textToDisplay.length -1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == '*' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      textToDisplay = '';
      result = "";
      calculation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (calculation == '+') {
        result = (firstNum + secondNum).toString();
      } else if (calculation == '-') {
        result = (firstNum - secondNum).toString();
      } else if (calculation == '*') {
        result = (firstNum * secondNum).toString();
      } else {
        result = (firstNum.toDouble() / secondNum.toDouble()).toString();
      }
      textToDisplay = firstNum.toString() + calculation + secondNum.toString();
    }
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator flutter"),
      ),
      body: Container(
          margin: const EdgeInsets.only(left: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: Text(
                    textToDisplay,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.blueGrey,
                    ),
                  )),
              Container(
                  margin: const EdgeInsets.only(right: 30, bottom: 30),
                  child: Text(
                    result,
                    style: const TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                    ),
                  )),
              row1(),
              row2(),
              row3(),
              row4()
            ],
          )),
    );
  }

  Widget row1() {
    return Row(
      children: [
        ButtonCalculator(text: 'DEL', callback: onClickButton),
        ButtonCalculator(text: 'CLR', callback: onClickButton),
        ButtonCalculator(text: '/', callback: onClickButton),
        ButtonCalculator(text: '=', callback: onClickButton)
      ]
    );
  }

  Widget row2() {
    return Row(
      children: [
        ButtonCalculator(text: '7', callback: onClickButton),
        ButtonCalculator(text: '8', callback: onClickButton),
        ButtonCalculator(text: '9', callback: onClickButton),
        ButtonCalculator(text: '*', callback: onClickButton)
      ]
    );
  }

  Widget row3() {
    return Row(
      children: [
        ButtonCalculator(text: '4', callback: onClickButton),
        ButtonCalculator(text: '5', callback: onClickButton),
        ButtonCalculator(text: '6', callback: onClickButton),
        ButtonCalculator(text: '-', callback: onClickButton)
      ],
    );
  }
  Widget row4() {
    return Row(
      children: [
        ButtonCalculator(text: '1', callback: onClickButton),
        ButtonCalculator(text: '2', callback: onClickButton),
        ButtonCalculator(text: '3', callback: onClickButton),
        ButtonCalculator(text: '+', callback: onClickButton)
      ],
    );
  }
}
