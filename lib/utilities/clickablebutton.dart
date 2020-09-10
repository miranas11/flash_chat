import 'package:flutter/material.dart';

class ClickableButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final String screenId;
  ClickableButton({this.color, this.buttonText, this.screenId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, screenId);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
