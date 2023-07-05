import 'package:flutter/material.dart';


class ButtonCalculator extends StatelessWidget {
  String text ="";
  Function callback;
  ButtonCalculator({
    required this.text,
    super.key, required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 10),
      decoration: ShapeDecoration(
          color: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15))),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          onPressed: () => callback(text),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}