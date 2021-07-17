import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final text;
  final buttonColor;
  final textColor;
  final onPressed;
  ActionButton(
      {Key? key,
      required this.text,
      this.buttonColor = Colors.blueGrey,
      this.textColor = Colors.white,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        elevation: 0,
        padding: EdgeInsets.all(15),
      ),
      onPressed: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
          ),
          alignment: Alignment.center,
          // width: double.maxFinite,
          height: 27,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 21),
          )),
    );
  }
}
