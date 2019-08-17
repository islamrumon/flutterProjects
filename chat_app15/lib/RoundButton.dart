import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    this.color,
    this.name,
    this.onPress
  });

  final Color color;
  final String name;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
       elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            name,
          ),
        ),
      ),
    );
  }
}