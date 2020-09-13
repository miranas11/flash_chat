import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClickableButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  Function onClick;
  ClickableButton({this.color, this.buttonText, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onClick,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
